# Why Tally, and Why It Doesn't Exist Yet

**For the Build Challenge: Unaite, MWM, Apple & ⌘+F**

---

## The pitch in one paragraph

Tally lets you scan your home with an iPhone, finds the damage you didn't know you had, tells you what it costs to fix, and gets quotes from builders. One app covering what currently takes four: a scanner, an inspector, a calculator, and a phone book. The technology to do this has existed for about two years. Nobody has stitched it together. We have, and we want to ship it.

---

## 1. The problem is real, expensive, and universal

Home damage is the largest category of avoidable homeowner spending in the developed world, and it hides:

| Fact | Source |
|------|--------|
| 70% of non-catastrophic home insurance claims originate *inside* the home | Chrp / Nationwide |
| Water damage is the #2 homeowners claim in the US; average cost exceeds **$15,000** | Chrp / Nationwide |
| 30% of homes have active plumbing hazards likely to cause a claim within 4 years | Chrp / Nationwide |
| Residential fires from electrical malfunctions: **23,700 per year**, average loss **$88,000** | Chrp / Nationwide |

Why homeowners miss it:

- They don't know what to look for
- A crack in the wall is either cosmetic or the early sign of subsidence
- A stain on the ceiling is either old paint or a leaking roof that will cost £4,000 next winter
- Professional inspection costs $300 to $600 just to tell you which one it is
- You either need an expert or you need to already know, which is the whole problem

Everyone who has bought a house has stood in a room thinking *"is that crack new?"* and done nothing about it. That inaction is where the money goes.

---

## 2. Why it doesn't exist yet

We did the competitive homework. Full analysis in [`market research.md`](market%20research.md). The conclusion is blunt:

**No app on any platform connects scanning, damage detection, cost estimation, and contractor hiring.** Every competitor does two of the four at best.

| Category | Apps | Where they stop |
|----------|------|-----------------|
| Scanning | magicplan (116K reviews), Polycam, CamPlan | Floor plans. No damage, no hiring. |
| Damage detection | Homesly, Home Inspection AI, Chrp | Photos only. No scanning, no hiring. |
| Hiring | Angi (2.5★), Thumbtack (3.3★) | No scanning, no detection. Both rated poorly. |
| Estimating | Fixer AI, SimplyWise | Assume you already know what's wrong. |
| All-in-ones | SimpleRenovate, My Home Genius | Skip damage detection entirely. |

Four structural reasons the gap persists. They're also why our Apple-first approach is the right one.

### 2.1 The hardware was the bottleneck

- Consumer-grade room scanning required LiDAR
- Until recently that meant a $1,100 Pro device
- Now in every iPhone Pro since 2020, plus iPad Pro: tens of millions of devices
- Most competing apps treat LiDAR as an afterthought or ignore it (Polycam, CamPlan)
- We treat it as the foundation
- The hardware just became good enough, and nobody has built for it properly

### 2.2 The AI was siloed

- Damage detection models existed in research and enterprise (insurance)
- Running one on-device alongside an AR session, in real time, is an iOS engineering problem
- Apple Intelligence and the Neural Engine make it tractable in 2026 in a way it wasn't in 2023
- Enterprise tools like Chrp prove the detection works
- They just wrapped it in an insurer's portal instead of a consumer app

### 2.3 The business models were misaligned

- Angi and Thumbtack charge contractors per lead, whether or not the job happens
- Contractors pay for dead leads, homeowners get ghosted
- Both sides rate the platforms 2.5 to 3.3 stars on Trustpilot
- Nobody has built a hiring layer where the platform only earns when work is completed
- Our %-on-completion model (StoreKit for the platform fee, payments through the builders) aligns everyone
- It's a structural fix, not a feature

### 2.4 Four apps means four companies

- Scanner companies sell to contractors
- Detection companies sell to insurers
- Directories sell leads
- Each is a viable standalone business
- Combining them into one consumer flow means none of them makes as much money as they do today, so nobody does it
- That's not a technical barrier, it's an incentive barrier
- A hackathon team is exactly the kind of unencumbered builder that steps over it

---

## 3. Why it's an Apple project, specifically

This isn't a web app we happen to build in Xcode. It's an iOS app, and the hackathon's technology list reads like our architecture doc:

| Challenge technology | How Tally uses it |
|----------------------|-------------------|
| **LiDAR / ARKit** | Core scanning. Scene reconstruction maps walls, floors, ceilings. Depth data tells the damage model how far a surface is from the camera. |
| **On-device AI / custom ML models** | Damage detection runs on the Neural Engine. A wall crack scan can't wait for a cloud round-trip, and home imagery shouldn't leave the device. |
| **Apple Intelligence / Foundation Models** | Natural-language summaries of findings (*"The stain on your bedroom ceiling is consistent with a roof leak; budget £800 to £2,400"*), estimate explanation, quote comparison. |
| **Vision framework** | Classification pass over scanned frames to flag candidate damage regions before the heavier model runs. |
| **StoreKit** | Commission fee collection. The monetization path in the brief, implemented natively. |
| **Siri / App Intents** | *"Hey Siri, what did my last scan find?"* Natural entry point for a tool people use once a month. |
| **Liquid Glass** | Scan overlay UI, live floor-plan drawing during capture. |
| **App Store Connect submission** | The challenge asks for a submitted build. On-device processing and local scan storage is what App Review likes to see. |

The Apple angle isn't decoration:

- A LiDAR scanner with a cloud-dependent AI pipeline is worse than one that processes on-device
- Slower, less private, and useless in a basement with no signal
- Apple's stack is the correct engineering choice here
- That makes Apple's sponsorship a natural fit rather than a logo placement

For Apple specifically:

- Tally uses technologies Apple is actively promoting: LiDAR adoption, on-device inference, Apple Intelligence
- It's in a category (home improvement) with an obvious, non-gimmicky consumer use case
- It's the kind of app that makes LiDAR look like a feature people asked for
- That's the demo Apple wants to show

---

## 4. Why it's an MWM project

MWM brings product, growth, and monetization expertise. Tally has a clear, modelable business.

**Revenue model**

- 5% commission on completed repair jobs, collected via StoreKit
- No charge for scanning, no subscription, no lead fees
- The homeowner's cost to use Tally is zero
- Builder acquisition is outbound (we email builders), so there's no paid-marketing cold start
- Unit economics: a single £3,000 job produces £150
- Ten jobs a month in one city is £1,500/month with no inventory, no staff, no fulfillment cost beyond the marketplace itself

**Growth model**

- Scans are shareable by nature: floor plans, before/after damage photos
- Builder-side growth is self-reinforcing: more jobs leads to more builders, which leads to faster quotes, which leads to more jobs
- The "find out what's wrong with your house for free" hook beats Angi's "describe your project and pray" form

**Why it scales past a hackathon**

- The hard parts (scan pipeline, on-device model, estimate database) are one-time builds
- Each additional city is a pricing-data problem and a builder-outreach list
- That's operations, not engineering
- MWM's playbook for launching and monetizing apps maps directly onto it

---

## 5. Why it should win

### 5.1 It matches the brief almost point-for-point

The challenge asks for *"an app with a clear use case, a working core experience and a path to monetization."*

| Brief requirement | Tally |
|-------------------|-------|
| Clear use case | Scan your home, know what's wrong, know what it costs, hire someone |
| Working core experience | One continuous flow; scan completes on-device in under a minute |
| Path to monetization | 5% on completed jobs via StoreKit. No subscription, no lead fees. |
| Real user problem | Validated by insurance data: 70% of interior claims, $15K+ average water damage |
| Plan to bring to market | Outbound builder acquisition city-by-city; free scans as the consumer hook |

### 5.2 The competitive whitespace is documented, not assumed

- `market research.md` covers 15+ competitors across four categories
- Ratings, pricing, and direct user quotes
- The conclusion: nobody fills all six cells of the capability matrix
- Verifiable in about ten minutes of reading
- When a judge asks *"why doesn't this already exist?"* we have an answer with receipts

### 5.3 Both halves of the judging criteria are covered

Teams are two tech + two business. Tally genuinely needs both:

- **Tech:** LiDAR scene reconstruction, on-device damage classification, AR session management, estimate generation. Real engineering, not a CRUD app with a chatbot wrapper.
- **Business:** market sizing, commission modeling, builder-side supply strategy, launch sequencing. The research is done and the pricing is defensible.

### 5.4 It's honest about its risks

| Risk | Our answer |
|------|------------|
| AI false positives | Confidence thresholds, user confirmation before anything reaches a builder |
| LiDAR only on Pro iPhones | Camera-only fallback for everyone else, with honest accuracy disclosure |
| Builder supply (cold start) | Manual outreach for MVP. Builders are reachable by email, unlike consumer users. |
| Category trust deficit (Angi/Thumbtack poisoned "hire a pro") | Full cost breakdown, commission disclosed upfront, no charge unless work happens |

### 5.5 It's a story, not a feature list

Most hackathon apps demo as *"here's a thing it can do."* Tally demos as a narrative:

> *You scan your kitchen wall. The app flags a crack, says it looks structural, estimates £400 to £1,200 to fix, and has three builders in your area ready to quote by tomorrow. You've gone from worried to informed to actioned in one session.*

A three-minute pitch that lands without explanation. Judges should be able to imagine themselves using it, which is more than most submissions manage.

---

## 6. Why sponsorship is worth it

**For Apple**

- A LiDAR + on-device AI showcase in a consumer category with a clear use case
- If LiDAR-era iPhones are going to justify their Pro premium, apps like this are the argument
- Sponsoring a team that leans into Apple's stack, rather than one that uses it as a checkbox, demonstrates the ecosystem working as intended

**For MWM**

- A team building with a real monetization path from day one
- Applying the exact skills MWM wants to mentor
- Tally's commission model is the kind of alignment MWM's growth philosophy rewards

**For Unaite**

- A French student team shipping to the App Store with a defensible market thesis
- The kind of project that becomes the federation's case study for *build*

**For ⌘+F**

- Deep native engineering: ARKit, Vision, StoreKit, on-device models
- Supported by experienced Apple developers
- The kind of codebase where mentorship actually compounds

**For the winning team**

- A product with a documented gap, a working build, and a plausible first revenue event
- Not a demo that dies at the venue

---

## 7. The one-sentence version

**Every other app in this space does one of the four things badly or two of them well. Tally does all four in one native Apple experience, for a problem that costs homeowners $15,000 a claim at a time, with a business model that only makes money when the fix actually happens.**

---

*Supporting documents: [`market research.md`](market%20research.md) (competitive analysis across 15+ apps) and [`planning.md`](planning.md) (full technical and business plan).*
