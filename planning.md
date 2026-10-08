# Planning

How we build Tally for the Build Challenge: Unaite, MWM, Apple & ⌘+F.

- Kick-off: Friday 9 October
- Build days: Thursday 15 and Friday 16 October at MWM, Boulogne-Billancourt
- Deliverable target: tested internal build, App Store Connect submission when ready, and 3-minute pitch
- Team: 4 students (2 tech, 2 business)

---

## 1. Product overview

Tally turns an iPhone room scan into a measured renovation brief, a preliminary price estimate, and a starting point for an artisan quote. LiDAR is the preferred capture path on supported iPhones; camera capture with manual measurement correction is the planned fallback. Room scans can supply dimensions and photos of visible condition issues that belong in the work scope. They cannot reveal hidden damage or replace a site inspection.

**Primary audience:** people planning renovation, painting, flooring, tiling, or a bathroom refresh. They may know what to change but need help defining the work, setting a budget, and briefing an artisan. The target is a preliminary estimate in minutes, with a two-minute scan/brief flow to test rather than promise before measurement.

**Second audience:** artisans who need a more detailed project brief, measurements they can verify, quantities, and a practical way to draft a quote. Both roles work from the same project information. Tally aims to reduce unproductive site visits and free quoting time, which must be tested with artisans.

**First launch:** ask whether the person is a **Standard user** or an **Artisan** before requesting camera or location access. Save the choice on-device, show the matching home screen, and allow it to be changed later in Settings. Standard mode uses plain language and planning ranges; Artisan mode exposes measurements, assumptions, materials, labor, and quote details. The selection changes presentation and tools, not ownership of project data.

**Business model:** homeowners receive a limited number of free quote requests, with a proposed paid tier for more. Artisans receive a few free quote drafts, then a proposed paid plan. A separate, disclosed 5% platform fee applies only when a job booked through Tally is completed. Exact free limits, subscription prices, payer, and billing rules require validation. A Tally estimate is a planning range, never an artisan's final quote.

**Why now:** iPhone scanning and on-device analysis can make a useful room brief quickly. Apple RoomPlan requires a LiDAR device, so non-LiDAR iPhones need a separate camera-assisted and manual measurement flow.

**Price-data hypothesis:** use quantities, work type, location, and a history of completed local jobs whose scope and final price Tally has validated. This dataset does not exist yet. The prototype may use a small, dated, sourced local rate table and must identify it as illustrative. A claim of greater accuracy than a general LLM requires a measured comparison against real completed jobs; do not put it in product copy before that test.

**Current state (8 October 2026):** the checked-in app is an Xcode starter screen with the app icon. The team is set up to begin testing, with a target of a testable prototype within two days. Scanning, estimates, role views, and payments are not yet implemented or ready for public release.

---

## 2. Core user flow

```text
First launch → choose Standard user or Artisan → role-specific home

Standard user
Create renovation project → choose room and intended work → LiDAR scan or
camera/manual capture → correct measurements and visible condition notes →
see a preliminary local planning range → use a free quote request or paid
allowance → share a brief → compare artisan quotes → book

Artisan
Open a project brief → inspect detailed plan, photos, and measurements →
verify quantities and assumptions → prepare materials/labor breakdown →
use a free quote draft or paid allowance → draft and share a quote
```

The hackathon demo uses one prepared renovation project so both roles can be shown without relying on live cross-device delivery. The standard user journey is the main pitch; switching to Artisan shows the detailed view of that same project. Quotes received during the demo are explicitly simulated.

---

## 3. User stories

### Standard user

- As a person planning a renovation, I state the room and the work I want done before scanning.
- I can scan the room or enter measurements manually when scanning is unavailable.
- I see a simple plan, photos, and a checklist of work to confirm before asking for quotes.
- I can add a visible issue, or confirm or dismiss an issue the app flags, so an artisan sees the right scope.
- I see a preliminary price range in minutes, its local rate source and date, and its assumptions before I contact anyone.
- I share one project brief with several artisans and compare their quotes by scope, price, and timing.
- I can see any platform fee before agreeing to a job.
- I can see how many free quote requests remain and what a paid plan would cost before purchasing.

### Artisan

- As an artisan, I choose Artisan mode at first launch and can change roles later.
- I receive or open a detailed version of the project brief with measurements, photos, conditions, and requested work.
- I verify dimensions and quantities rather than treating an iPhone scan as construction-grade measurement.
- I can break a quote into materials, labor, allowances, exclusions, and schedule.
- I can export or share a quote draft; a live inbox and delivery system require the later backend phase.
- I can see how many free quote drafts remain and what the paid artisan plan would cost before purchasing.

### Demo scenario

A user plans to refresh a kitchen: repaint walls and replace flooring. The scan supplies a rough plan and surface quantities; the user confirms a water stain to include in the brief. Tally shows a budget range, three seeded artisans, and simulated quotes. Artisan mode then shows the same project with measurements and a line-item quote draft.

---

## 4. Scope

### Must have (demo-blocking)

- First-launch Standard user / Artisan choice, persisted locally, with a Settings switch
- Standard flow: project goal, LiDAR room scan on supported devices or camera/manual fallback, simple plan, editable scope, local planning range, artisan list, limited free quote requests, quote comparison
- Artisan flow: detailed view of the same project, editable quantities/assumptions, materials and labor quote draft
- Clear labels distinguishing Tally planning estimates from artisan quotes
- An explicit location and rate-table source/date on every demo estimate; no claim of verified job-history pricing until that data exists
- A visible example of limited free homeowner requests and artisan drafts, with paid-plan screens clearly marked as proposed
- Seeded artisan profiles and simulated incoming quotes, visibly marked as demo data
- Commission breakdown with the proposed 5% fee disclosed before booking
- Offline local persistence for role, project, measurements, scope, estimates, and quote drafts
- LiDAR room capture on a supported test device, with approximate measurements clearly editable
- Camera/photo and manual measurement fallback for a non-LiDAR test device

### Should have (if time allows)

- Improved LiDAR mesh detail and camera capture guidance
- Vision-assisted condition flags with user confirmation before they enter a brief
- PDF export of the renovation brief and artisan quote draft
- Foundation Models summary with a template fallback
- Local notification for a simulated incoming quote

### Could have (stretch)

- Quantity suggestions for paint, flooring, and tile
- Map view of artisans
- Multiple rooms within one renovation project
- Before/after reference photos

### Out of scope for the hackathon

- Live two-sided accounts, real-time quote delivery, chat, and backend sync
- Automated payments, Stripe Connect payouts, refunds, and disputes
- Production subscription billing and entitlement enforcement
- Structural or safety certification from AI detections
- Property data APIs, insurance integration, Android, web, and iPad-specific layouts

### Cut order if behind

1. PDF export (use the share sheet with a concise text brief)
2. Condition-detection model (keep manually entered condition notes)
3. Map view (keep artisan list)
4. Quantity suggestions (keep manual quantity editing)
5. Foundation Models explanation (keep template copy)

Never cut the role choice, standard renovation brief and estimate, artisan detailed view and quote draft, or comparison of the prepared quotes. Those establish the two-sided product direction.

---

## 5. Technical approach

### Stack

| Choice | Decision | Why |
|--------|----------|-----|
| UI | SwiftUI with Liquid Glass materials | Challenge technology, fast iteration |
| Current iOS target | 27.0 | Matches the checked-in Xcode project; revisit device support before release |
| Scanning | RoomPlan/ARKit on LiDAR iPhones; separate camera-assisted and manual path elsewhere | Measured room capture where supported, editable fallback on other devices |
| Condition notes | User confirmation, optionally assisted by Vision/Core ML | Helpful to scope work without claiming a diagnosis |
| Summaries | Foundation Models where available, template fallback | Challenge technology, graceful degradation |
| Storage | SwiftData | Matches the checked-in Xcode starter project; shared local project model for both role views |
| Charts | Swift Charts | Budget ranges and quote comparison |
| Reports | PDFKit | Share sheet export |
| Payments | Fee disclosure and simulated breakdown for MVP | Real transactions follow a production service flow |
| Maps | MapKit | Optional artisan discovery view |
| Network | None required for MVP | Reduces demo failure points |

The experience uses the system Liquid Glass design and keeps estimates available when Foundation Models are unavailable.

### 5.1 Scanning

Single ARSession as the source of truth (simpler than running AVCaptureSession and ARSession in parallel).

**Session setup**

- Request camera permission (`NSCameraUsageDescription`)
- Ask for camera access when the user starts a scan, after role selection; offer manual entry on deny
- Check `ARWorldTrackingConfiguration.isSupported`
- Check `ARWorldTrackingConfiguration.supportsSceneReconstruction(.mesh)` for LiDAR
- Non-Pro devices: same ARKit path, no mesh, note reduced accuracy in UI
- Configure session: `ARWorldTrackingConfiguration`, `sceneReconstruction = .mesh` when available

**Preview and overlay**

- RealityKit `ARView` embedded in SwiftUI
- Centered room capture guide and simple plan preview
- Instruction label: "Move slowly around the room"
- Flashlight toggle for dark rooms
- Progress indicator driven by surfaces captured; label dimensions as approximate until verified
- Completion checkmark when coverage is sufficient

**Capture**

- Stills from `ARFrame.capturedImage` (camera buffer, no second session)
- JPEG compression at 85%
- Shutter button, undo last, delete session with confirmation
- Optional save to Photos library: `PHAssetCollection` named "Tally Scans"

**Metadata per scan (JSON)**

- Timestamp (ISO 8601)
- Optional approximate location or entered project address
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

### 5.2 Condition notes and optional detection

The first release helps users describe a renovation. Visible damage can change the scope, but the app must not imply it can certify structural or hidden conditions.

**Baseline:** users add notes and mark photos manually. On-device Vision can suggest candidate cracks, stains, or holes, shown as “possible issue” with confidence. The user confirms or dismisses every suggestion before it appears in a brief.

**Stretch:** train a Core ML image classifier on permissively licensed and team-captured images. Evaluate on a held-out set across lighting and wall finishes. If quality is not adequate, retain manual notes and remove automated labels from the demo. No condition flag should silently alter a quote or a safety decision.

**Artisan view:** preserve the original image, user confirmation, dimensions if known, and a field for the artisan's own inspection notes. The artisan verifies findings on site before quoting definitive work.

### 5.3 Renovation estimates

No external pricing API is needed for the demo. A bundled table of indicative local costs gives a planning range for the selected work and quantities. Record each rate's location, unit, date, source, and assumptions. Keep demo data separate from a future Tally-validated history of completed local jobs. A job enters that history only with consent, confirmed scope, final paid amount, completion date, and location; do not imply that such history exists today.

| Work type | Quantity basis |
|-----------|----------------|
| Interior painting and preparation | wall/ceiling area |
| Flooring replacement | floor area |
| Tiling | surface area |
| Drywall and plaster repair | area or job |
| Fixtures and fittings | item and allowance |
| Plumbing or electrical work | provisional allowance, artisan verification required |
| Condition remediation | provisional allowance if the user confirms an issue |

The standard view shows low–high ranges, inclusions, exclusions, source/date, and the assumptions behind quantities and regional adjustment. Users can correct measurements and budget. Label every number “planning estimate, not a quote.” Time a scan-to-estimate usability test; the two-minute target and any claim of greater accuracy than a general LLM need evidence from real jobs.

The artisan view exposes the same quantities plus editable labor, materials, waste allowance, tax, exclusions, and schedule. A quote draft is authored by the artisan; Tally's estimate must never be presented as their offer. Keep a manual fallback for every computed quantity.

### 5.4 Artisan discovery and quotes

**Demo directory:** 8 to 12 seeded artisan profiles with specialty, service area, credentials where verified, and contact details. Do not imply a seeded profile is a live account or that Tally has verified a license without evidence.

**Standard view:** choose artisans by trade, send a concise renovation brief through the native share/mail composer, and compare quotes by covered scope, price, schedule, and exclusions. Simulated incoming quotes are marked as demo data.

**Artisan view:** open the same prepared project as a detailed brief, correct quantities, and create a local quote draft. Export with the share sheet. A real artisan inbox, cross-device delivery, and status tracking follow after a backend exists.

**Post-hackathon:** recruit artisans city by city, establish verified profiles and consent-based project delivery, then add live quote requests, messaging, and notifications.

### 5.5 Fee and payment model

The proposed 5% platform fee applies to completed jobs booked through Tally, not to planning, scanning, or requesting a quote. The standard user sees the base artisan quote, fee, and total before agreeing. The artisan sees the same calculation and the proposed terms.

For the prototype, calculate and display the breakdown with a clearly labeled simulated completion state. Do not collect a real payment or present a seeded quote as a live transaction. Production billing, payouts, refunds, and tax treatment require a separately validated service and payment flow. The proposed homeowner and artisan paid plans also require validated prices, limits, entitlements, and purchase flows before release.

### 5.6 Project briefs and sharing

The standard brief contains the room plan, photos, requested renovation work, confirmed condition notes, approximate measurements, budget range, and desired timing. The artisan draft adds quantities, materials, labor, allowances, exclusions, schedule, and validity period.

Use PDFKit for export if time permits; otherwise use a plain text brief through the system share sheet. Nothing leaves the device unless the user shares it. The demo uses local data and labels simulated quotes plainly.

### 5.7 Data model (planned SwiftData)

- **UserPreference**: selected role (Standard user or Artisan), onboarding completion; role can change in Settings
- **Project**: title, room, intended work, address/region if supplied, timing, status
- **ScanSession / ScanImage**: project relationship, approximate dimensions, photo, timestamp, capture method
- **ScopeItem**: work type, description, quantity, unit, user confirmation, condition note link if relevant
- **ConditionNote**: image/region, candidate label and confidence if suggested, confirmed/dismissed status, artisan verification note
- **PlanningEstimate**: project and scope relationships, low/high, unit basis, regional factor, assumptions
- **RateSource**: work type, unit, locality, value/range, source, effective date, validation status
- **Artisan**: profile, specialties, service area, verification status, contact details
- **QuoteDraft / Quote**: project and artisan relationships, line items, labor, materials, allowances, exclusions, schedule, status, total
- **PlanEntitlement**: role, remaining free quote allowance, proposed paid tier; backend-backed enforcement follows later
- **Job**: accepted quote, disclosed platform fee, completion status (demo only in MVP)

### 5.8 Permissions and privacy

Required:

- Camera when a scan starts; manual measurement entry remains available
- Notifications only if the user enables quote alerts, asked in context

Optional:

- Location (regional pricing; allow manual city/postcode entry instead of permission)
- Photo library (save scans)

Not requested for MVP: contacts, microphone, Bluetooth.

Privacy story for App Review and the pitch:

- Image analysis and project drafts remain on-device in the demo
- Photos and briefs leave the phone only when the user explicitly shares them
- Reassess App Store privacy disclosures when live artisan delivery or analytics is added
- This is a feature: home imagery is sensitive

---

## 6. Business model

### 6.1 Revenue

- Planning and scanning are free. Homeowners receive a limited number of free quote requests; the exact allowance and paid-tier price need user testing.
- Proposed platform fee: 5% of a completed job booked through Tally, disclosed before acceptance. The payer and collection process must be validated before launch.
- Artisans can draft a few quotes free before a paid artisan plan. Test whether the subscription plus a completed-job fee is acceptable; do not charge for an unqualified lead.

Illustration: a €3,000 completed job would produce a €150 platform fee. This is a model example, not a forecast.

### 6.2 Market entry

Begin with one city and one or two common renovation categories, such as painting and flooring. Recruit artisans able to quote those jobs, then test whether standard users trust the brief and whether artisans find its measurements and scope useful. Collect completed-job data only with consent and verification; compare resulting estimates against actual prices and a general LLM baseline. Damage detection is an optional helper that reduces missed work, not the acquisition promise.

---

## 7. Timeline and release gate

### 8–10 October: two-day test-build target

The repo, Xcode project, and icon are set up. The functional app is not built yet. Aim to ship a **testable internal build** within two days, then use real tests to decide what can be shown at the 15–16 October challenge. This is a target, not a claim that App Store review or a public launch can finish in two days.

**Day 1 — shared project and capture:** choose a role, create a renovation project, capture a LiDAR room where supported, provide camera/photo plus manual measurements elsewhere, and save editable dimensions and visible condition notes with SwiftData. If LiDAR capture takes longer than planned, keep the manual path usable.

**Day 2 — estimate and quote:** produce a preliminary range from a dated local rate table, show its assumptions, let the artisan verify quantities and draft a quote, and prepare one complete local test scenario. Show free quote allowances and proposed paid plans without live billing. Display the proposed 5% completion fee in a simulated booking example.

**Test gate before calling the build shippable:** run on a LiDAR iPhone and a non-LiDAR iPhone; time scan-to-estimate; compare sample estimates with known job prices; check offline access, editable measurements, clear estimate-versus-quote labels, and visible demo-data labels. Do not claim a two-minute flow or superior accuracy until the measurements support it.

### 15–16 October: challenge delivery

Polish the tested path, prepare an internal/TestFlight build where signing allows, rehearse the three-minute demonstration, and capture a backup recording. App Store submission is a separate release step subject to functional completeness and review.

**Submission checklist**

- [ ] Build installed and tested on supported devices
- [ ] App icon, screenshots, description, and privacy disclosures reviewed
- [ ] One prepared renovation project and both role views
- [ ] Estimate data source and limitations visible in the UI
- [ ] Screen recording backup and three-minute pitch
- [ ] Research and business claims checked against current evidence

---

## 8. Success metrics

Product:

- First-launch role choice persists, and Settings can switch between Standard and Artisan without losing a project.
- On one iPhone, a standard user can create a renovation brief, see a planning range, and compare prepared quotes.
- An artisan can open the same project, verify/edit quantities, and produce a line-item quote draft.
- Scan or manual measurement path works; approximate dimensions are labeled and editable.
- Estimate and 5% fee calculations pass representative cases; zero crashes in 10 demo rehearsals.
- Project planning works offline; simulated quotes are clearly labeled.
- Homeowner and artisan free-quote allowances and proposed paid tiers are explained without implying that billing is live.
- A timed scan-to-estimate test records whether the two-minute target is met on both device types.

Validation:

- Interview at least 5 prospective renovators and 3 artisans about scope clarity, estimate trust, and quote usefulness.
- Cost data covers the selected launch work types with documented assumptions.
- Local rate sources are dated; estimate error is compared with actual jobs and a general LLM baseline before an accuracy advantage is claimed.
- Pitch runs in three minutes and shows both roles without relying on a backend.

---

## 9. Risks and mitigations

| Risk | Likelihood | Mitigation |
|------|:----------:|------------|
| Two role experiences exceed hackathon time | High | Shared project model; standard flow first, artisan detailed view of the same prepared project |
| Scan dimensions look more precise than they are | High | Approximate label, manual correction, artisan verification before a binding quote |
| Renovation scope is too broad for useful estimates | High | Launch with one or two work categories and clear exclusions |
| Demo quotes look like real artisan offers | Medium | Mark seeded profiles and quotes as simulated in the UI and pitch |
| Detection model accuracy is weak | High | Manual condition notes are sufficient; optional AI suggestions require confirmation |
| App Store review or demo device causes delay | Medium | TestFlight/local build, backup device, prepared project, screen recording |
| Payment details are unsettled | Medium | Show fee math only; validate payer, billing, and terms before production |
| No verified local job history yet | High | Use sourced illustrative rates, collect data with consent, and withhold accuracy claims pending a measured comparison |
| Two-day delivery target is too ambitious | High | Prioritize one complete test path, preserve manual capture fallback, and describe it as an internal test build |

---

## 10. Future phases

**After the hackathon:** validate the renovation-first positioning with users and artisans, recruit verified artisans in one city, add live project delivery and quote responses, then develop production booking and payment operations.

**Later:** more renovation categories, multi-room projects, better quantities, a consent-based history of validated local jobs, photo-assisted condition notes, in-app messaging, and production paid-plan billing.

**Success criteria to leave the hackathon with:** a coherent two-role demo, evidence that renovators and artisans value the shared brief, and a codebase that can support live delivery later.

---

## Appendix A: original general objectives (v1, preserved)

- Use the iPhone's LIDAR scanner or camera to map out interior spaces
- Run AI analysis on the scans to spot wall damage, cracks, and other issues
- Look up local property data to get a sense of reasonable repair costs/quotas
- Handle the logistics of hiring builders: reach out, compare quotes, organize schedules
- Take a small cut (around 5%) from whatever the user ends up paying for the repairs
- Email the user summaries and help coordinate with contractors

These were the original damage-first objectives. The current renovation-first direction keeps scanning, optional condition notes, budgeting, artisan quotes, and the proposed completion fee, but changes the entry point and adds two role-specific experiences.
