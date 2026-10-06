# Planning

How we build Tally for the Build Challenge: Unaite, MWM, Apple & ⌘+F.

- Kick-off: Friday 9 October
- Build days: Thursday 15 and Friday 16 October at MWM, Boulogne-Billancourt
- Deliverable: working build submitted through App Store Connect + 3-minute pitch
- Team: 4 students (2 tech, 2 business)

---

## 1. Product overview

Tally turns an iPhone into a home damage assessment tool:

1. Scan a room with the camera or LiDAR
2. AI flags damage: cracks, water stains, holes, peeling paint
3. Get a repair cost range based on local pricing
4. Get quotes from nearby builders
5. Pay when the work is done. Tally takes 5%

The homeowner's cost to use Tally is free. We only make money when a repair actually happens.

**Who it's for:** homeowners and renters who suspect something is wrong but don't know what it is, what it costs, or who to call. The people currently doing nothing while the damage gets worse.

**Why now:**

- LiDAR is in every iPhone Pro since 2020, tens of millions of devices
- On-device classification is fast enough for live camera analysis
- No competitor connects all four steps (see `market research.md`)

---

## 2. Core user flow

```
Home screen
   │
   ▼
Scan room (AR camera + overlay)          45 to 60 seconds
   │
   ▼
Results (annotated photos, detections, health score)
   │
   ▼
Estimate (cost range + breakdown, regional adjustment)
   │
   ▼
Builders (nearby list, profile, request quotes)
   │
   ▼
Quotes (compare side by side, accept one)
   │
   ▼
Payment breakdown (job cost + Tally 5%) + PDF report
```

Every screen must be reachable in one tap from the last. The whole flow is the demo.

---

## 3. User stories

### Homeowner

- As a homeowner, I scan a room and immediately see what looks damaged
- As a homeowner, I tap a detection to see what it is, how confident the app is, and what it likely costs
- As a homeowner, I see one honest price range with a breakdown, not a vague guess
- As a homeowner, I see builders near me with ratings and specialties
- As a homeowner, I send quote requests to several builders at once
- As a homeowner, I compare quotes by price, timeline, and rating in one table
- As a homeowner, I see exactly what the 5% fee covers before I agree to it
- As a homeowner, I export a PDF report of everything found

### Builder

- As a builder, I create a profile with my license, specialty, and service area
- As a builder, I receive quote requests from homeowners in my area
- As a builder, I see the damage details before I quote, so I quote accurately
- As a builder, I'm only competing on jobs that are real (no pay-per-lead waste)

### Demo scenarios

The pitch runs one of these:

1. Kitchen wall: crack + water stain, estimate, three builders, quotes arrive, compare, accept, commission breakdown
2. Bedroom ceiling: water stain traced to roof leak, $800 to $2,400 estimate, one-tap quote request
3. Whole apartment scan: health score, prioritized list of issues by cost

---

## 4. Scope

### Must have (demo-blocking)

- AR camera screen with overlay, progress, capture
- Damage detection on captured frames (Tier 1 or Tier 2, see5.2)
- Results screen: detections, confidence, health score
- Cost estimate: bundled repair database + regional multiplier
- Builder list: seeded directory, profiles, specialties
- Quote request: native mail/SMS composer with pre-filled template
- Quote comparison table with accept/decline
- Commission breakdown screen with 5% math
- PDF report via PDFKit + share sheet
- Persistence: Core Data (ScanSession, Detection, Estimate, Builder, Quote)

### Should have (if time allows)

- LiDAR mesh reconstruction on Pro devices
- Map view of builders (MapKit)
- Local notification when a demo quote arrives
- Foundation Models summary: plain-English explanation of findings
- StoreKit 2 config file for premium builder tier demo
- Pre-scanned demo project as fallback

### Could have (stretch)

- Dedupe overlapping detections across frames
- Builder contact import
- In-app follow-up reminders (UNUserNotificationCenter)
- Health score history over multiple scans

### Out of scope for the hackathon

These are real, they're just not for Oct 16:

- Mailgun email automation, A/B testing, send queues
- Stripe Connect builder payouts, refunds, chargebacks, disputes
- Firebase backend, in-app chat, real-time messaging
- Property data APIs (Zillow, Redfin, MLS, permits)
- Internationalization and localization
- Admin dashboards, CSV export, analytics
- Insurance integration (Symbility, Xactimate)
- Android, web, iPad-specific layouts
- Real builder onboarding at scale

Rationale: two build days. A tight end-to-end flow beats a wide half-built one. Judges reward working demos, not ticket backlogs.

### Cut order (if we're behind, remove in this order)

1. PDF report (share sheet with a screenshot instead)
2. StoreKit subscription demo
3. MapKit builder map (list view only)
4. Health score animation (static number)
5. Quote sort/filter (hardcode sensible order)
6. Foundation Models summaries (template text)

Never cut: scan, detection, estimate, builder list, quote comparison, commission breakdown. That sequence is the pitch.

---

## 5. Technical approach

### Stack

| Choice | Decision | Why |
|--------|----------|-----|
| UI | SwiftUI with Liquid Glass materials | Challenge technology, fast iteration |
| Min iOS | 26.0 | Foundation Models + Liquid Glass availability |
| Scanning | ARKit (ARWorldTrackingConfiguration) | Works on all iPhones; mesh only where supported |
| Detection | Vision + Core ML (Create ML trained classifier) | On-device, no cloud dependency |
| Summaries | Foundation Models where available, template fallback | Challenge technology, graceful degradation |
| Storage | Core Data | Offline-first, no backend for MVP |
| Charts | Swift Charts | Health score, quote comparison |
| Reports | PDFKit | Share sheet export |
| Payments | Stripe test mode for commission, StoreKit 2 for subscription tier | See 6.2 |
| Maps | MapKit | Builder discovery |
| Network | None required for MVP | Reduces demo failure points |

Deployment target iOS 26 also guarantees the Liquid Glass design language and Foundation Models framework the challenge asks for.

### 5.1 Scanning

Single ARSession as the source of truth (simpler than running AVCaptureSession and ARSession in parallel).

**Session setup**

- Request camera permission (`NSCameraUsageDescription`)
- Show system dialog on first launch, settings redirect on deny
- Check `ARWorldTrackingConfiguration.isSupported`
- Check `ARWorldTrackingConfiguration.supportsSceneReconstruction(.mesh)` for LiDAR
- Non-Pro devices: same ARKit path, no mesh, note reduced accuracy in UI
- Configure session: `ARWorldTrackingConfiguration`, `sceneReconstruction = .mesh` when available

**Preview and overlay**

- RealityKit `ARView` embedded in SwiftUI
- Centered rectangular frame guide
- Instruction label: "Move slowly around the room"
- Flashlight toggle for dark rooms
- Progress indicator driven by surfaces captured
- Completion checkmark when coverage is sufficient

**Capture**

- Stills from `ARFrame.capturedImage` (camera buffer, no second session)
- JPEG compression at 85%
- Shutter button, undo last, delete session with confirmation
- Optional save to Photos library: `PHAssetCollection` named "Tally Scans"

**Metadata per scan (JSON)**

- Timestamp (ISO 8601)
- GPS coordinates (CLLocationManager)
- Device model identifier
- Scan dimensions from mesh extents where available

**Performance**

- Release pixel buffers promptly, autorelease pools around processing
- Throttle capture during heavy inference
- Test on oldest supported device before build day

**Share**

- Export scan folder as ZIP
- AirDrop, Mail, Messages via share sheet
- README in export explaining contents

### 5.2 Damage detection

Two tiers, ship whichever is better by build day 1. Honest confidence labels either way.

**Tier 1: heuristic detection (baseline, always works)**

- Vision framework on captured frames
- `VNDetectRectanglesRequest` and contour detection for wall boundaries
- Edge density analysis for line-like structures (candidate cracks)
- Color statistics for stain regions (dark, low-saturation patches on light walls)
- Saliency to focus analysis on wall areas, ignore furniture
- Output: candidate regions with a "possible damage" label, no class names

**Tier 2: trained classifier (preferred)**

Training data:

- 50 to 100 images per class: fine cracks, wide cracks, water stains, holes, peeling paint
- Sources: public datasets, permissively licensed photos, team captures
- Augment 3x: rotation (±15°), brightness/contrast shifts, horizontal flip, Gaussian noise
- Target: 600 to 1,500 total images

Training:

- Create ML image classifier (transfer learning under the hood, trains in minutes on a Mac)
- Split: 80% train, 10% validation, 10% test
- Export to Core ML, bundle in app
- Target: 75%+ precision on holdout. Below that, ship Tier 1 instead

Inference:

- Load model on first launch
- Resize frames to model input (224x224), normalize pixels
- Throttle to 15fps, skip frames if previous inference is still running
- Confidence threshold 0.5 for display, 0.7 for anything shown in builder reports
- Map output index to damage label

Bias audit:

- Test across lighting conditions, wall colors, textures
- Document known weak spots in the app (Settings > About)

**Display**

- Bounding boxes on preview: red = cracks, blue = water, yellow = holes, orange = peeling
- Confidence percentage on each box
- Tap box → detail panel: type, confidence, suggested repair, estimated cost
- Confirm button (adds to report), "not damage" button (dismisses false positive)
- Results view: count by damage type, health score, annotated screenshot export

**Health score**

- Start at 100
- Deduct per confirmed detection: major crack -10, minor crack -3, water stain -15, hole -5, peeling -2
- Floor at 0, show label: Good (80+), Fair (50 to 79), Poor (<50)

**Logging**

- Each detection → Core Data: GPS, timestamp, type, confidence, bounding box, session link
- Confirmed labels stored for future retraining (post-hackathon pipeline)

### 5.3 Estimation

No external APIs for MVP. A bundled database is faster, offline-capable, and has zero approval risk.

**Repair cost database (static JSON in app bundle)**

| Repair type | Range basis |
|-------------|-------------|
| Drywall patch (small/medium/large) | per job |
| Interior painting | per room |
| Crack injection / structural repair | per job |
| Tile repair / replacement | per sqft |
| Flooring repair | per sqft |
| Plumbing fix | per job |
| Electrical fix | per job |
| Water stain remediation | per job |
| Ceiling repair | per job |

**Regional adjustment**

- Address entry or "use current location"
- `MKLocalSearch` resolves address to coordinates
- Bundled cost-of-living table maps metro area to multiplier: urban 1.3, suburban 1.0, rural 0.8
- Fallback multiplier 1.0 when no match
- UI note: "Estimates are planning figures, not quotes"

**Presentation**

- Range: "Typically $500 to $1,200"
- What's included and excluded
- Tap for line-item breakdown
- User budget input shows what's achievable
- Foundation Models (or template) one-paragraph explanation of the finding

**Property data (post-hackathon)**

- Zillow/Redfin comparables, permit history, assessment data
- Requires API keys and approval; not demo-critical

### 5.4 Builder hiring

Seeded directory for MVP. Native outreach. No backend.

**Directory**

- 8 to 12 builder profiles in bundled JSON: name, company, license, specialty, rating, service radius, email, phone, photo
- Content written during prep week by business profiles (research real local firms for realism)
- Stored in Core Data after first launch

**Screens**

- List: search by name/specialty, filter by radius, rating, trade
- Profile: photo, license, specialty, rating, service area, quote history
- Map (should-have): pins for builders, property pin, distance, directions button

**Outreach**

- `MFMailComposeViewController` with pre-filled template:
  - Subject: "Repair Quote Request: {property address}"
  - Body: address, repair type, estimated range, deadline
- `MFMessageComposeViewController` with truncated version
- Multi-select builders, send sequentially with small delay
- Progress: "Sending to 3 of 12 builders"
- Log each attempt: sent, failed, skipped

**Quotes**

- Comparison table: builder, amount, timeline, status
- Sort by price, timeline, rating
- Color: green accepted, yellow pending, red declined
- Swipe right accept, swipe left decline, haptic feedback
- Status tracking: sent, viewed, quoted, accepted
- Flag no response after 7 days

**Demo quotes (important honesty note)**

Real builders won't respond during a 3-minute pitch. For the demo:

- Accepted quote requests trigger a local notification after 10 to 15 seconds
- Seeded "incoming quotes" appear in the comparison table
- Settings toggle marks demo mode
- We say this out loud in the pitch: "responses are simulated until builders are onboarded"

**Post-hackathon**

- Firebase or custom backend for real quote delivery
- In-app chat (MessageKit)
- Push notifications via APNs
- Builder-side app or web portal

### 5.5 Payments and commission

One decision, documented so justification.md and the pitch agree:

**The 5% commission is a fee on a physical home repair service.** Under App Review guideline 3.1.5, services consumed outside the app are billed outside in-app purchase. Same model as Airbnb and Uber. We use Stripe in test mode for the MVP.

**StoreKit 2 is for the premium builder subscription** (an in-app digital service, which does require IAP). Demo with a StoreKit Configuration file locally, no App Store Connect approval needed.

**MVP flow**

- Commission calculator: job amount ×0.05, rounded to 2 decimals
- Breakdown screen before confirmation:
  - Base repair cost: $X
  - Tally commission 5%: $Y
  - Total: $X + $Y
- Onboarding disclosure screen with concrete example, required checkbox
- Stripe test-mode payment intent (or simulated receipt if keys aren't ready)
- PDF invoice via PDFKit: invoice number, date, address, line items, commission, Tally branding
- Email receipt through the native mail composer

**Out of scope (post-hackathon)**

- Stripe Connect payouts to builders
- Subscriptions through StoreKit production
- Refunds, disputes, chargebacks
- Split payments with insurance
- Multi-currency, fraud detection
- Admin panel

### 5.6 Reports and email

**MVP**

- PDF report via PDFKit: scan summary, annotated detections, health score, cost estimates, builder list
- Share sheet: AirDrop, Mail, Messages
- Scan-complete summary sent to the user through `MFMailComposeViewController`
- Quote request emails to builders through the same composer

**Post-hackathon: Mailgun automation**

- Template suite (scan complete, estimates ready, builder hired)
- Subject line A/B tests
- Open/click tracking, unsubscribe compliance
- Drip follow-ups and reminders

### 5.7 Data model (Core Data)

- **ScanSession**: timestamp, GPS, device, room name, health score, dimensions
- **ScanImage**: session relationship, filename, thumbnail, capture time
- **Detection**: image relationship, type, confidence, bounding box, status (flagged, confirmed, rejected), suggested repair, cost range
- **Estimate**: detection or session relationship, repair type, low, high, multiplier, notes
- **Builder**: name, company, license, specialty, rating, radius, email, phone, photo data
- **Quote**: builder relationship, session relationship, amount, timeline, status, timestamps
- **Job**: property, accepted quote, commission amount, status

### 5.8 Permissions and privacy

Required:

- Camera (scan)
- Notifications (quote alerts), asked in context

Optional:

- Location (regional pricing, skip with default multiplier)
- Photo library (save scans)

Not requested for MVP: contacts, microphone, Bluetooth.

Privacy story for App Review and the pitch:

- All image analysis on-device, no cloud upload
- Scans stay on the phone unless the user shares them
- Data not collected means a clean privacy nutrition label
- This is a feature: home imagery is sensitive

---

## 6. Business model

### 6.1 Revenue

- 5% commission on completed repair jobs
- Free for homeowners: no subscription, no scan fees, no lead fees
- Builders pay nothing to receive quotes (post-hackathon premium tier: monthly fee for priority listing)

**Unit economics**

- One £3,000 job → £150 to Tally
- 10 completed jobs per month in one city → £1,500/month
- No inventory, no staff cost, no fulfillment beyond the marketplace
- Compare: Angi contractors pay $350/month plus per-lead regardless of outcome

### 6.2 Why it's not exploitative (the pitch line)

- Angi and Thumbtack charge for dead leads and score 2.5 and 3.3 on Trustpilot
- We only earn when work happens
- Homeowner, builder, and platform incentives point the same direction: finish the job

### 6.3 Market entry

- Launch city-by-city, outbound builder recruitment by email
- Scans are the free acquisition hook: "find out what's wrong with your house"
- Builders are reachable professionals, which makes supply-side cold start easier than consumer marketplaces

---

## 7. Timeline

### Friday 9 October: kick-off (17:00 to 20:00)

Tech profiles:

- Finalize MVP cuts, confirm no scope drift
- Repo check: branching, protection, build passes on all Macs
- Agree data model and screen list in code before leaving

Business profiles:

- Builder profile content plan (who, what fields)
- Repair cost research: gather real price ranges for the database
- Draft pitch skeleton

Everyone:

- Assign demo scenario (section 3)
- Confirm demo device (one iPhone Pro with LiDAR, one backup)

### 10 to 14 October: prep week (remote,5 days)

Tech:

- Day 1: ARKit scan prototype (preview, mesh, capture)
- Day 2: detection spike, Tier 1 heuristics working on stills
- Day 3: Create ML data collection and first training run
- Day 4: Core Data model, results screen, health score
- Day 5: cost database integration, builder seeding, full flow navigable

Business:

- Repair cost database finished and handed to tech
- Builder directory content finished
- 5 user interviews: ask about home maintenance habits, willingness to share 5%, what they'd scan first
- Pitch draft v1
- App Store Connect: bundle ID, signing, screenshots drafted

Checkpoint Sunday 14 October evening: every must-have screen reachable, even if ugly.

### Thursday 15 October: build day 1

Goal: end-to-end flow works once, no polish.

- Morning: integrate scan → detect → results
- Afternoon: estimate screen wired to database, builders list, quote request
- Evening: quote comparison table, commission math, Core Data pass
- Stop condition: demo works top to bottom on one device by 19:00

### Friday 16 October: build day 2

- Morning: polish pass, empty states, error states, PDF report
- Midday: feature freeze. TestFlight upload, App Store Connect submission started
- Afternoon: demo rehearsals (3 full runs), fix what breaks, screen recording captured as backup
- Evening: pitch practice to a timer, submit everything

**Submission checklist**

- [ ] Build uploaded to App Store Connect
- [ ] App icon, screenshots, description, privacy labels
- [ ] Demo device with pre-scanned fallback project
- [ ] Screen recording backup (in case live demo fails)
- [ ] Pitch at 3 minutes or under
- [ ] `market research.md` and `justification.md` ready to share with judges

---

## 8. Success metrics

Product:

- Full flow completes on one iPhone Pro: scan → detect → estimate → builders → quotes → payment breakdown
- Scan of one room in under 60 seconds
- Detection: Tier 2 precision ≥75% on holdout, or Tier 1 ships with honest "beta" labeling
- Commission math correct across 10 test cases
- Zero crashes during 10 consecutive demo rehearsals
- Works offline (no network needed for scan, detect, estimate)

Submission:

- Build uploaded before 18:00 on 16 October
- TestFlight available to judges if App Store review hasn't cleared

Business:

- 5 user interviews completed during prep week
- Cost database covers ≥9 repair types with real price ranges
- 8+ builder profiles with realistic content
- Pitch rehearsed to under 3 minutes,3+ full runs

---

## 9. Risks and mitigations

| Risk | Likelihood | Mitigation |
|------|:----------:|------------|
| Detection model accuracy below target | High | Tier 1 heuristics always ready; honest confidence labels; user confirmation before reports |
| Demo device fails or runs out of battery | Medium | Second device + pre-scanned project + screen recording |
| App Store review slower than 24h | High | Demo from TestFlight/local build; submission is the deliverable, review timing is Apple's |
| LiDAR unavailable (no Pro device) | Medium | Camera-only ARKit path works on all iPhones; confirm device at kick-off |
| ARKit + inference performance drop | Medium | Throttle inference to 15fps, drop frame processing if UI stutters |
| Scope creep from judges' suggestions | High | Feature freeze at midday Oct 16; must-have list is closed |
| Local mail composer fails during demo | Low | Pre-drafted emails; demo mode toggles simulated sends |
| Create ML training data too small | Medium | Augment 3x; fall back to Tier 1; treat as beta either way |

---

## 10. Future phases

**Phase 2: after the hackathon**

- Real builder onboarding, city launch #1
- Backend for quote delivery (Firebase or custom)
- Stripe Connect payouts
- Property data APIs: comparables, permits, assessments
- Push notifications through APNs
- In-app chat

**Phase 3: growth**

- Mailgun email automation with A/B testing
- Model retraining pipeline from confirmed user labels
- Premium builder tier via StoreKit in production
- Admin dashboard: commissions, disputes, metrics
- Insurance partnership track (the Chrp validation)
- Internationalization

**Success criteria to leave the hackathon with**

- A demo anyone can run in 90 seconds
- Evidence users want it (interview notes)
- A market gap we can show on one page
- A codebase the team can keep building on (branches, PRs, tests passing)

---

## Appendix A: original general objectives (v1, preserved)

- Use the iPhone's LIDAR scanner or camera to map out interior spaces
- Run AI analysis on the scans to spot wall damage, cracks, and other issues
- Look up local property data to get a sense of reasonable repair costs/quotas
- Handle the logistics of hiring builders: reach out, compare quotes, organize schedules
- Take a small cut (around 5%) from whatever the user ends up paying for the repairs
- Email the user summaries and help coordinate with contractors

Mapping to this plan: objectives 1 and 2 are sections 5.1 and 5.2. Objective 3 is 5.3 (bundled now, APIs later). Objective 4 is 5.4. Objective 5 is 6.1. Objective 6 is 5.6 (native composer now, Mailgun later).
