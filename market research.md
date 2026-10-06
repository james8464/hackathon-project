# Market Research

Competitive analysis across four pillars: room scanning, damage detection, cost estimation, contractor hiring. Sources: App Store, Google Play, Trustpilot, G2, Capterra, company sites, press releases. Conducted October 2026.

---

## 1. Room Scanning & Floor Plan Apps

### magicplan

**Rating:** 4.7/5 — 40K App Store, 116K Google Play
**Pricing:** 2 free projects, then subscription (undisclosed tiers)

**Strengths:**
- Point phone at corners → room mapped in seconds; no cloud processing delay
- Real-time floor plan generation
- Two free projects with full feature access — no trial clock
- 3D rendering quality praised consistently
- 10+ years of iOS compatibility updates
- Replaces tape-measure workflow: one user measured entire house in 15 minutes before a Home Depot trip

**Weaknesses:**
- Merging rooms corrupts measurements — pulling one wall shifts all connected rooms; user-requested "lock room" feature still unimplemented
- 12+ attempts to map a home adequately (per RoomScan Classic review — same pattern across category)
- Free tier caps at 2 projects, then paywall
- 3D mode view-only; cannot edit objects
- Door/window detection inconsistent — same window classified as door in adjacent scans
- No first-time tutorials; onboarding is trial-and-error
- Furniture placement imprecise; objects shift between sessions
- One user left a 5-star review specifically to surface the "MONEY SUCKING app" complaint

**Positioning:** Scanning UX is best-in-class, but no path from scan to action. Users must switch apps for estimates and hiring.

### Polycam

**Rating:** 4.7/5 — 43K App Store
**Pricing:** $29.99/mo Basic, $26.99/mo Pro, $199.99/yr Pro (Sensor Tower data: ~100K downloads/mo, ~$500K revenue/mo)

**Strengths:**
- Scans accurate enough for professional 3D modeling
- Photogrammetry works on any iPhone (no LiDAR needed)
- Open exports: OBJ, DAE, FBX, STL, PLY, DXF → Blender, SketchUp, nerfstudio
- Contractor use case: remote measurement without return site visits

**Weaknesses:**
- Pricing trajectory: free → $149/yr → $400/yr for basic measurement features
- Scan data locked behind cloud — stopping subscription removes access to existing measurements
- Auto-enrollment in free trials without clear consent (dark pattern)
- Scans vanish during multi-room sessions; save hangs requiring force quit
- Features progressively paywalled over successive updates
- Polycam blocks Apple-initiated refunds — one user called it "predatory"
- $400/yr price point for a floor plan called "totally unreasonable for DIYers"

**Positioning:** Revenue-driven pricing has alienated the core user base. Trust deficit is measurable in review sentiment.

### RoomScan Pro LiDAR

**Rating:** 4.3/5 — 2K App Store
**Pricing:** Free with in-app purchases

**Strengths:**
- "Touch phone against walls" input method — works in poorly-lit spaces where camera fails
- Measurements import directly into Symbility and Xactimate (insurance adjuster workflow)
- Developers respond to every review with specific fixes
- Fills insurance adjuster niche — no direct competitor in that workflow

**Weaknesses:**
- Crashes on complex rooms (multiple door/window transitions)
- Room joining places rooms in distorted positions; no post-join repositioning
- Features not self-explanatory; 12+ attempts for adequate home mapping
- One reviewer: "ridiculous pricing model"

**Positioning:** Strong vertical (insurance/restoration) but UX friction limits mainstream adoption.

### CamPlan

**Rating:** 4.7/5 — 26K ratings
**Pricing:** Subscription (undisclosed)

**Strengths:**
- AI Video Scan works without LiDAR — film any iPhone walkthrough → AI draws floor plan
- Full apartment in under 3 minutes
- Works offline; no extra hardware
- Auto-generated editable 2D projects from scan
- Exports: PDF, PNG, DXF, SVG, USDZ, OBJ, DAE
- Built-in material quantity estimation (paint, flooring, drywall) from real measurements
- 800K+ users, 4.7★ average

**Weaknesses:**
- Newer entrant; limited critical feedback available
- Subscription-based

**Positioning:** Closest scanning competitor to our vision — scanning + estimation in one app. But contractor-focused: generates estimates for professionals to send clients. Does not address the homeowner's question: "What's wrong with my house and who should fix it?"

---

## 2. AI Damage Detection Apps

### Homesly.ai

**Type:** B2B SaaS — property managers, landlords
**Model:** 14-day trial, then paid

**Flow:** Phone video walkthrough → AI flags damage → compares move-in vs move-out footage → auto-calculates security deposit deductions → dispatches vendors

**Strengths:**
- Eliminates hours of manual inspection
- Frame-by-frame move-in/move-out comparison isolates new damage from pre-existing wear
- Deposit calculations auto-drafted as line items
- Vendor dispatch triggered directly from damage findings

**Weaknesses:**
- Requires both move-in AND move-out footage — single-scan use case unsupported
- Exclusively for landlords/managers; no homeowner flow
- Enterprise pricing not transparent

**Positioning:** Validates AI damage detection from video. But their model compares two states of a property; we detect damage from a single scan and recommend fixes.

### Home Inspection AI (Thomas Enevoldsen)

**Rating:** New — insufficient data
**Pricing:** $9.99/week or $29.99/month after 3-day trial

**Flow:** Capture photos → AI highlights damage with bounding boxes, confidence, severity, recommended actions → export PDF report

**Strengths:**
- Detects: cracks, water damage, mold, drywall holes, ceiling/window/door damage, electrical and plumbing issues
- On-device processing by default (privacy)
- Guided walkthrough for first-time users
- Professional PDF report generation

**Weaknesses:**
- $9.99/week is consumer-prohibitive; priced for professional inspectors
- iPhone/iPad only; no Android
- Zero ratings — unvalidated at scale

**Positioning:** Confirms technical feasibility of AI damage detection. Pricing excludes homeowners. Commission model (5% on completed jobs) undercuts subscription by orders of magnitude.

### Chrp (Nationwide Insurance partnership)

**Type:** B2B insurance platform
**Model:** Free to homeowners selected for renewal inspections

**Flow:** Guided photo survey → AI reviews against 400+ known failure points → flags corrosion, faulty wiring, fire hazards → tailored report → escalation to inspection team if significant

**Market data (from Chrp/Nationwide):**
- 70% of non-catastrophic homeowners claims originate inside the home
- Water damage: #2 US homeowners claim type; average cost >$15,000
- Fire losses: average >$88,000
- Electrical malfunctions: 23,700 residential fires/year
- 30% of homes contain active plumbing hazards likely to cause a claim within 4 years

**Positioning:** Data validates core premise — homeowners underestimate interior damage because they don't know what to look for. Chrp is insurer-driven and reactive (renewal inspections); we're homeowner-driven and proactive.

### HomeScan AI / Fixer AI / RepairAI (2025–2026 launches)

| App | Flow | Status |
|-----|------|--------|
| HomeScan AI | Photo → AI diagnosis with severity, cost estimate, repair steps | 3 ratings, 5.0★ |
| Fixer AI | Describe project + photo → pricing breakdown (labor/materials/travel) → match with pros | 0 ratings |
| RepairAI | Photo → AI calls local shops to collect quotes automatically | 1 rating, 5.0★ |

**Common strengths:** Speed of estimates, cost transparency, eliminates contractor phone tag.

**Common weaknesses:** All launched within last 18 months; sample sizes too small for signal. Fixer AI has zero reviews. RepairAI's AI-calls-shops concept unproven.

**Positioning:** Market is converging on photo-based instant estimates. None combine physical room scanning with damage detection. All are single-photo (point at one thing) rather than room-scan (map entire space).

---

## 3. Contractor Hiring Platforms

### Angi (formerly HomeAdvisor)

**Rating:** 2.5/5 — 7K Trustpilot reviews
**Model:** Free for homeowners; contractors pay $350/mo subscription + per-lead fees

**Strengths:**
- Largest home services marketplace globally (founded 1998)
- Free homeowner access
- 84% of reviews are 5-star (per Trustpilot breakdown — bimodal distribution)

**Weaknesses (contractor side):**
- "54 leads, only 4 came to fruition" — 7% conversion rate
- Same lead sold to multiple contractors simultaneously
- Auto-billing persists after cancellation; "hidden language in contracts"
- Disconnected phone numbers listed as active leads
- "Borders on fraudulent business practices" — direct quote
- Sales reps make promises contradicted by terms
- Customer service nearly unreachable

**Weaknesses (homeowner side):**
- Multiple missed appointments with no-show contractors
- Pros sometimes falsely report showing up (homeowner charged $50 no-show fee)
- Appointments changed hours before scheduled time without notice
- "Feels like an app for scammers"

**Positioning:** Cautionary tale. Charging for leads regardless of quality destroyed trust on both sides. 2.5/5 with 7,000 reviews is a terminal signal. Our model must never charge for dead leads.

### Thumbtack

**Rating:** 3.3/5 — 6K Trustpilot
**Model:** Free for customers; contractors pay per lead ($40+/lead)

**Strengths:**
- Clean UI, fast matching, wide service category coverage
- Free consumer access

**Weaknesses:**
- Contractors pay $40+/lead even if customer never responds — "literally paying Thumbtack for people to ignore us"
- Customers often unaware they've been "matched" to a pro
- Sales reps upsell $300 prepaid credits aggressively
- No contractor vetting — "false sense of safety"; users report unlicensed contractors
- Reviews can't be deleted, only edited once
- One customer: charged after pro repeatedly canceled; couldn't remove review

**Positioning:** Misaligned incentives — optimized for lead volume, not job success. Contractors pay regardless of outcome → cut corners on quality. Our 5%-on-completion model aligns incentives: we only earn if the job happens.

### Taskrabbit

**Rating:** 4.2/5 — 55K Trustpilot (highest in category)

**Strengths:**
- Highest-rated hiring platform in this research
- Responsive, professional taskers
- Transparent pricing for small tasks

**Weaknesses:**
- Limited to small tasks; no serious renovation or licensed trade work
- Service fees accumulate

**Positioning:** High rating from staying narrow: furniture assembly, small repairs, moving. Platforms that try to serve everyone (Angi, Thumbtack) see quality collapse. We should scope tightly to home damage/repair.

---

## 4. All-in-One Competitors (Closest to Our Vision)

### SimpleRenovate

**Tagline:** "Scan. Post. Compare. Hire."
**Rating:** 5.0/5 — 5 ratings (too early)
**Pricing:** Free to post; $5 in-app purchase tier

**Flow:** Scan room → post project (photos/video) → receive quotes from verified contractors → compare → hire → track → approve payments

**Strengths:**
- Automatic measurement capture from scan
- Free project posting
- Side-by-side bid comparison with credentials and reviews
- In-app messaging; contract review before payment

**Weaknesses:**
- 5 total ratings — no meaningful signal
- iPhone only
- Contains advertising
- Skips damage detection entirely — assumes homeowner already knows what needs fixing

**Positioning:** Closest conceptual competitor — scanning + hiring in one flow. But entry point is "I know what I want done." Our entry point is "I don't know what's wrong with my house," which is where most homeowners actually start.

### My Home Genius

**Tagline:** "Scan your home. Know your costs."
**Status:** New; limited reviews

**Flow:** LiDAR scan → instant remodel cost estimates (DIY vs pro) → AI photo diagnosis → home health score (0–100) → match with vetted local pro → paint codes, filter sizes, appliance history

**Strengths:**
- Zip-code-tuned cost estimates
- Home Health Score for insurance discount eligibility
- Breaker panel decoder (photo → AI reads circuits)
- Move-in/move-out home record transfer
- Maintenance reminders (HVAC filters, smoke detector batteries)
- Roof and hail damage alerts

**Weaknesses:**
- New; limited user validation
- Estimates labeled "rough planning figures, not quotes"
- Affiliate model raises contractor bias questions

**Positioning:** Conceptually closest overall — scanning + estimates + pro matching. Their differentiators: home memory (paint codes, filter sizes) and insurance scoring. Missing: systematic damage detection with repair recommendations.

### ArchAI

**Tagline:** "Scan the room. See the redesign. Know the cost."
**Status:** Available on App Store

**Flow:** LiDAR scan → AI redesign visualization → cost estimate → export PDF for contractors

**Strengths:**
- Before/after: original scan vs AI-generated redesign
- Cost estimate before contractor engagement
- 60+ furniture pieces for layout testing
- iCloud sync

**Weaknesses:**
- LiDAR-only (excludes non-Pro iPhones)
- Cosmetic renovation focus, not damage assessment
- No contractor hiring integration

**Positioning:** Nails "visualize before you commit" for aesthetic renovation. Missing damage detection entirely. Nobody combines "what's broken" + "how much to fix" + "who fixes it" in one flow.

### SimplyWise Cost Estimator

**Rating:** 4.8/5 — 37K ratings (highest-rated estimator)
**Audience:** Professional contractors

**Strengths:**
- Photo → detailed cost breakdown (materials + labor) in seconds
- Before/after AI renderings for client presentations
- LIDAR room scanning built in
- PDF bid generation, invoicing, work order management
- AI upsell suggestions to increase job value
- 10,000+ contractors using it

**Weaknesses:**
- Built for contractors pricing jobs, not homeowners understanding costs
- Requires you to already know what work is needed

**Positioning:** Proves photo-to-estimate works at scale (37K ratings). But it's a contractor tool, not a homeowner tool. Validates our estimation approach while confirming the consumer gap.

---

## 5. Competitive Matrix

| Category | Apps | Does Scanning? | Does Damage Detection? | Does Cost Estimation? | Does Hiring? | Homeowner-Focused? |
|----------|------|:-:|:-:|:-:|:-:|:-:|
| Scanning | magicplan, Polycam, CamPlan, RoomScan | ✅ | ❌ | ❌ (CamPlan: materials only) | ❌ | Partial |
| Damage Detection | Homesly, Home Inspection AI, Chrp | ❌ (video/photo) | ✅ | ❌ | ❌ | ❌ (B2B) |
| Hiring | Angi, Thumbtack, Taskrabbit | ❌ | ❌ | ❌ | ✅ | Partial |
| Estimation | SimplyWise, Fixer AI, HomeScan AI | ❌ | Photo only | ✅ | Partial | ❌ (pro-focused) |
| All-in-One | SimpleRenovate, My Home Genius, ArchAI | ✅ | ❌ | ✅ | ✅ (partial) | Partial |
| **Tally (ours)** | | **✅** | **✅** | **✅** | **✅** | **✅** |

No existing app fills all six cells.

---

## 6. Patterns

### What leaders do well

- **Scanning speed:** magicplan "point at corners," CamPlan "3 minutes for full apartment"
- **Offline capability:** CamPlan works without connectivity; Polycam's cloud dependency is its #1 complaint
- **Export breadth:** PDF, CAD (DXF/DWG), 3D (USDZ/OBJ/DAE) — users want data portability
- **Developer responsiveness:** RoomScan Pro replies to every review with specific fixes — builds loyalty
- **Free tier with real utility:** magicplan's 2 full projects, not a time-limited trial

### What users punish

- **Subscription creep:** Polycam $400/yr backlash; magicplan "money sucking" reviews
- **Trial dark patterns:** auto-enrollment, hidden cancel paths, refund blocking
- **Misaligned incentives:** Angi/Thumbtack charge for dead leads; both sides distrustful
- **Measurement corruption:** editing one wall shifts entire floor plan (magicplan)
- **Learning curves:** 12+ attempts for basic home mapping across multiple apps
- **Missing onboarding:** first-time users left to trial-and-error
- **Cloud lock-in:** lose data access when subscription lapses (Polycam)
- **Unvetted contractors:** Thumbtack's "false sense of safety"
- **Mid-scan crashes:** RoomScan Pro and Polycam both lose data during capture

---

## 7. The Gap

No app connects all four steps:

```
Scan (LIDAR/camera) → AI damage detection → Cost estimate → Builder hiring
```

Current landscape:
- **Scanners** (magicplan, Polycam, CamPlan) stop at floor plans
- **Damage detection** (Homesly, Home Inspection AI) is photo-based, no scanning, no hiring
- **Hiring** (Angi, Thumbtack) has no scanning, no damage detection, predatory pricing
- **Estimators** (Fixer AI, SimplyWise) require you to already know what's wrong
- **All-in-ones** (SimpleRenovate, My Home Genius) skip damage detection

---

## 8. Our Positioning

1. **Single flow, problem → solution:** homeowner uses one app, not four
2. **Commission on completion:** 5% only when a job happens — vs. Angi/Thumbtack charging for dead leads
3. **Damage detection as entry point:** "Your wall has water damage → $400–$1,200 to fix → 3 builders available" — a complete narrative no competitor tells
4. **Homeowner-first:** magicplan/CamPlan are contractor tools; Angi/Thumbtack are directories; nobody builds for the confused homeowner
5. **Transparent pricing:** clear 5% breakdown vs. hidden fees, subscription traps, and per-lead charges

---

## 9. Risks

- **AI accuracy:** false positives erode trust immediately (magicplan's door/window misclassification is the cautionary example)
- **LiDAR coverage:** only Pro iPhones have LiDAR; camera fallback must work for the majority
- **Builder supply:** marketplace cold-start problem — need real builders responding to quotes
- **Category trust deficit:** Angi/Thumbtack have poisoned "hire a pro" sentiment; transparency must be aggressive
- **Free expectation:** Angi/Thumbtack market themselves as "free for homeowners"; 5% commission needs clear value justification
- **New entrant velocity:** HomeScan AI, Fixer AI, RepairAI, SimpleRenovate all launched 2025–2026 — the space is getting crowded fast

---

*Sources: App Store (US/UK/AU), Google Play, Trustpilot (Angi, Thumbtack, Taskrabbit, Polycam), G2, Capterra, Sensor Tower, company websites, PR Newswire (Chrp/Nationwide), press releases. October 2026.*
