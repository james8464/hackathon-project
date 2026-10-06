# Market Research

Competitive analysis across the four pillars of our project: room scanning, damage detection, cost estimation, contractor hiring. Sources: App Store, Google Play, Trustpilot, G2, Capterra, Sensor Tower, PR Newswire, company sites. October 2026.

---

## 1. Room Scanning & Floor Plan Apps

| App | Rating | Reviews | Pricing | Offline | Estimation |
|-----|:------:|--------:|---------|:-------:|:----------:|
| magicplan | 4.7★ | 116K+ | 2 free projects, then sub | Partial | ❌ |
| Polycam | 4.7★ | 43K+ | $26.99 to $199.99/mo | ❌ | ❌ |
| RoomScan Pro | 4.3★ | 2K+ | Free + IAP | Partial | ❌ |
| CamPlan | 4.7★ | 26K+ | Subscription | ✅ | Materials only |

### magicplan

The most established player: been around since 2012, 116K+ reviews, still shipping updates.

What works:

- Scanning is genuinely fast. Point your phone at the corners of a room, the floor plan draws itself in real time
- No waiting for cloud processing
- One user measured their entire house in 15 minutes before a Home Depot trip
- Free tier gives you two full projects with everything unlocked, no trial clock counting down
- More generous than most competitors

Where it falls apart:

- Measurements drift when you merge rooms. Pull one wall and every connected room shifts with it
- Users have asked for a "lock room" feature for years. Still isn't there
- Door/window detection is inconsistent. The same window sometimes comes back as a door in the next scan
- Furniture placement is sloppy, objects move between sessions
- No onboarding at all. Reviews suggest it takes 12+ attempts to map a home properly
- Pricing is a sore spot. One user left a 5-star review just so more people would see their complaint: *"I only rated this five stars so everyone can see what a MONEY SUCKING app this is."*

**The gap:** excellent scanning, no path to action. You finish the scan and need a different app for estimates, another for hiring. That's our opening.

### Polycam

4.7★ across 43K reviews, ~100K downloads and ~$500K revenue per month (Sensor Tower).

What works:

- Scans accurate enough for professional 3D modeling
- Photogrammetry mode works on any iPhone, no LiDAR needed
- Exports feed into Blender, SketchUp, and nerfstudio
- Popular with contractors who need to reference measurements remotely

The problem is pricing:

| Period | Price |
|--------|------:|
| Launch | Free |
| 2023 | $149/yr |
| 2025 | $400/yr |

That's for basic measurement features. Worse:

- Scan data lives behind their cloud. Stop paying and you lose measurements you already took
- Reviews mention auto-enrollment in free trials without clear consent
- Scans vanish mid-session, save hangs require force quits
- Polycam actively blocks Apple-initiated refunds
- One user called the company *"predatory."*
- Another: *"Now the app has all that functionality stripped out in favor of cloud processing and putting everything behind yet another subscription service."*

Pricing drove what was once a well-liked app into a trust deficit.

### RoomScan Pro LiDAR

4.3★ across 2K reviews.

What works:

- Input method is clever: touch your phone against each wall and it draws the plan
- Works in poorly-lit spaces where the camera fails
- Measurements import directly into Symbility and Xactimate, which is why insurance adjusters use it
- Developers respond to every review with specific fixes

What doesn't:

- Crashes on complex rooms
- Joining rooms places them in distorted positions with no easy correction
- Features aren't self-explanatory
- One reviewer called the pricing *"ridiculous"*

Strong in its niche (insurance/restoration), rough everywhere else.

### CamPlan

4.7★, 26K ratings, 800K+ users.

What works:

- Standout feature is AI Video Scan: film a quick walkthrough on any iPhone (even without LiDAR) and AI draws the floor plan
- Full apartment in under 3 minutes
- Works offline
- Exports in everything: PDF, PNG, DXF, SVG, USDZ, OBJ, DAE
- Material quantity estimation for paint, flooring, and drywall straight from the scan

The catch:

- Closest scanning competitor to our vision because it combines scanning with estimation
- But it's built for contractors. You're creating estimates to send to clients
- It doesn't address the homeowner's actual question: *"What's wrong with my house, what will it cost, and who should I call?"*

---

## 2. AI Damage Detection Apps

| App | Type | Input | Single-Scan? | Pricing | Homeowner? |
|-----|------|-------|:------------:|---------|:----------:|
| Homesly.ai | B2B SaaS | Video | ❌ (needs 2 states) | Paid after trial | ❌ |
| Home Inspection AI | Pro tool | Photos | ✅ | $9.99/wk | ❌ |
| Chrp | Insurance | Photos | ✅ | Free (insurer) | Partial |
| HomeScan AI | Consumer | Photo | ✅ | Free | ✅ |
| Fixer AI | Consumer | Photo | ✅ | Free | ✅ |
| RepairAI | Consumer | Photo | ✅ | Free | ✅ |

### Homesly.ai

B2B for property managers:

- Walk through a rental unit with your phone
- AI flags damage
- Compares move-in vs move-out footage
- Auto-calculates security deposit deductions
- Dispatches vendors
- Saves hours of manual inspection

The limits:

- Needs *both* move-in and move-out footage. Single-scan doesn't work
- Entirely landlord-focused, no homeowner flow

Validates AI damage detection from video, but their model compares two states of a property. We'd detect damage from one scan and recommend fixes.

### Home Inspection AI

New app, no meaningful ratings yet.

The flow:

- Capture photos
- AI highlights damage with bounding boxes, confidence scores, severity ratings, and recommended actions
- Export a PDF report
- Detects cracks, water damage, mold, drywall holes, ceiling/window/door damage, electrical and plumbing issues
- On-device processing by default, good for privacy

The catch:

- $9.99/week or $29.99/month
- Priced for professional inspectors, not homeowners
- Confirms the tech works commercially, and our commission model undercuts that subscription by orders of magnitude

### Chrp (Nationwide Insurance)

AI-powered home risk platform partnered with Nationwide:

- Guided photo survey
- AI reviews each image against 400+ known failure points
- Flags corrosion, faulty wiring, fire hazards
- Tailored report

The data they've published is worth paying attention to:

| Metric | Value |
|--------|------:|
| Non-catastrophic claims originating inside the home | 70% |
| Water damage rank (US homeowners claims) | #2 |
| Avg. water damage claim cost | >$15,000 |
| Avg. fire loss | >$88,000 |
| Homes with active plumbing hazards (claim within 4 years) | 30% |

This validates the premise of our app:

- Homeowners consistently underestimate interior damage because they don't know what to look for
- Chrp is insurer-driven and reactive (they only check during renewal)
- We'd be homeowner-driven and proactive

### New Entrants (2025-2026)

Three apps launched recently with overlapping value props:

| App | Flow | Ratings |
|-----|------|--------:|
| **HomeScan AI** | Photo → AI diagnosis (severity + cost + repair steps) | 3 · 5.0★ |
| **Fixer AI** | Project description + photo → pricing breakdown → match with pros | 0 |
| **RepairAI** | Photo → AI calls local shops to collect quotes | 1 · 5.0★ |

The shared problem:

- Too new to judge. Fixer AI has zero reviews
- RepairAI's AI-calls-shops concept is interesting but has one rating
- All chasing the same idea: instant estimates from a photo
- None combine physical room scanning with damage detection
- They're point-at-one-thing photo tools, not map-the-whole-space scanning tools

---

## 3. Contractor Hiring Platforms

| Platform | Rating | Reviews | Consumer Cost | Contractor Cost |
|----------|:------:|--------:|---------------|-----------------|
| Angi | 2.5★ | 7K (Trustpilot) | Free | $350/mo + per-lead |
| Thumbtack | 3.3★ | 6K (Trustpilot) | Free | $40+/lead |
| Taskrabbit | 4.2★ | 55K (Trustpilot) | Free + fees | % of job |

### Angi (formerly HomeAdvisor)

2.5★ across 7,000 Trustpilot reviews. Founded 1998, largest home services marketplace globally. Free for homeowners; contractors pay $350/month plus per-lead fees.

The rating distribution is bimodal:

```
5-star ████████████████████████████████████████ 84%
4-star █████ 10%
3-star █ 2%
1-star █ 3%
```

84% five-star reviews but a 2.5 average, meaning the one-star reviews are *extremely* angry.

What contractors report:

- *"I've had over 54 leads and only 4 have come to fruition"* (7% conversion)
- Same lead sold to multiple contractors simultaneously
- Disconnected phone numbers listed as active leads
- Auto-billing persists after cancellation, *"hidden language in contracts"*
- *"Borders on fraudulent business practices"*
- Sales reps promise things contradicted by actual terms

What homeowners report:

- Missed appointments with no-show contractors
- Pros falsely reporting they showed up, homeowner charged a $50 no-show fee
- Appointments changed hours before scheduled time
- One review: *"Feels like an app for scammers."*

The lesson: charging for leads regardless of quality destroyed trust on both sides. We can't repeat this.

### Thumbtack

3.3★ across 6K Trustpilot reviews. Free for customers; contractors pay $40+ per lead.

What works:

- Clean UI, fast matching, wide service coverage

The core problem is misaligned incentives:

- Contractors pay even when the customer never responds: *"literally paying Thumbtack for people to ignore us"*
- Customers often don't know they've been "matched" to anyone
- Sales reps aggressively push $300 prepaid credits
- No contractor vetting. Users report unlicensed workers and call the platform a *"false sense of safety"*
- Reviews can't be deleted, only edited once

Contractors pay regardless of outcome, so they cut corners on quality. Our 5%-on-completion model only works if the job actually happens.

### Taskrabbit

4.2★ across 55K Trustpilot reviews, the highest-rated hiring platform in this research.

What works:

- Taskers are responsive and professional
- Pricing is transparent for small tasks

Why it works:

- Stays in its lane: furniture assembly, small repairs, moving help
- No serious renovation, no licensed trade work
- Platforms trying to serve everyone (Angi, Thumbtack) see quality collapse
- We should scope tightly to home damage and repair

---

## 4. All-in-One Competitors

| App | Scanning | Damage Detection | Estimation | Hiring | Entry Point |
|-----|:--------:|:----------------:|:----------:|:------:|-------------|
| SimpleRenovate | ✅ | ❌ | ❌ | ✅ | "I know what I want" |
| My Home Genius | ✅ | Photo only | ✅ | ✅ | "What are my costs?" |
| ArchAI | ✅ | ❌ | ✅ | ❌ | "How will it look?" |
| SimplyWise | ✅ | ❌ | ✅ | ❌ | "Price this job" (pro) |
| **Tally (ours)** | **✅** | **✅** | **✅** | **✅** | **"What's wrong?"** |

### SimpleRenovate

"Scan. Post. Compare. Hire." Scan your room, post the project with photos/video, get quotes from verified contractors, compare side-by-side, hire, track, approve payments. Free to post, $5 in-app purchase tier.

- Conceptually the closest to us: scanning plus hiring in one flow
- But it skips damage detection entirely
- Their entry point is *"I know what I want done"*
- Ours is *"I don't know what's wrong with my house"*, which is where most homeowners actually start
- Only 5 ratings so far, iPhone only, contains ads

### My Home Genius

"Scan your home. Know your costs." LiDAR scan, instant remodel estimates (DIY vs pro), AI photo diagnosis, home health score (0-100), match with a local pro, paint codes, filter sizes, appliance history.

- Conceptually very close to us
- Their differentiators: home memory (paint codes, filter sizes, breaker panel decoder) and insurance scoring
- But estimates are labeled *"rough planning figures, not quotes"*
- Affiliate model raises bias questions
- No systematic damage detection with repair recommendations

### ArchAI

"Scan the room. See the redesign. Know the cost." LiDAR scan, AI redesign visualization, cost estimate, export PDF. Good before/after comparison, 60+ furniture pieces, iCloud sync.

- About cosmetic renovation: *"how will my room look if I repaint it"*
- Not damage assessment
- LiDAR-only, no hiring integration
- Nails the visualization idea for the wrong problem

### SimplyWise Cost Estimator

4.8★ across 37K ratings, the highest-rated estimator we found. Photo, detailed cost breakdown (materials + labor) in seconds, before/after AI renderings, LIDAR scanning, PDF bids, invoicing, AI upsell suggestions. 10,000+ contractors using it.

- Proves photo-to-estimate works at scale
- But it's a contractor tool. You're pricing jobs to send to clients
- Built for people who already know what work needs doing
- Not for homeowners trying to figure out what's wrong

---

## 5. Competitive Matrix

| Category | Apps | Scan | Detect | Estimate | Hire | Homeowner |
|----------|------|:----:|:------:|:--------:|:----:|:---------:|
| Scanning | magicplan, Polycam, CamPlan, RoomScan | ✅ | ❌ | ❌ ¹ | ❌ | Partial |
| Damage Detection | Homesly, Home Inspection AI, Chrp | ❌ ² | ✅ | ❌ | ❌ | ❌ ³ |
| Hiring | Angi, Thumbtack, Taskrabbit | ❌ | ❌ | ❌ | ✅ | Partial |
| Estimation | SimplyWise, Fixer AI, HomeScan AI | ❌ | Photo | ✅ | Partial | ❌ ⁴ |
| All-in-One | SimpleRenovate, My Home Genius, ArchAI | ✅ | ❌ ⁵ | ✅ | Partial | Partial |
| **Tally (ours)** | | **✅** | **✅** | **✅** | **✅** | **✅** |

> ¹ CamPlan: material quantities only · ² Video/photo only · ³ B2B insurance/property mgmt · ⁴ Pro-focused · ⁵ Photo-only, not systematic

Nobody fills all six cells.

---

## 6. Ratings at a Glance

```
HIRING (Trustpilot)
Taskrabbit   ████████████████████████████████████████████ 4.2 (55K)
Thumbtack    ██████████████████████████████▊              3.3 (6K)
Angi         ████████████████████▌                        2.5 (7K)

SCANNING (App Store)
magicplan    ████████████████████████████████████████████ 4.7 (116K)
Polycam      ████████████████████████████████████████████ 4.7 (43K)
CamPlan      ████████████████████████████████████████████ 4.7 (26K)
RoomScan Pro ████████████████████████████████▎            4.3 (2K)

ESTIMATING (App Store)
SimplyWise   ████████████████████████████████████████████ 4.8 (37K)
```

---

## 7. Patterns

**What works:**

- **Speed:** magicplan maps corners in seconds, CamPlan does a full apartment in 3 minutes
- **Offline:** CamPlan works without connectivity, Polycam's cloud dependency is its biggest complaint
- **Export options:** PDF, CAD, 3D formats. Users want to take their data elsewhere
- **Developer responsiveness:** RoomScan Pro replies to every review with specific fixes
- **Genuine free tiers:** magicplan's 2 full projects, not a time-limited trial

**What gets punished:**

- **Subscription creep:** Polycam's $400/yr, magicplan's *"money sucking"* reviews
- **Trial dark patterns:** auto-enrollment, hidden cancel paths, refund blocking
- **Misaligned incentives:** Angi/Thumbtack charge for dead leads, both sides end up distrustful
- **Measurement corruption:** editing one wall shifts the entire floor plan (magicplan)
- **Steep learning curves:** 12+ attempts for basic mapping across multiple apps
- **Cloud lock-in:** lose your data when the subscription lapses (Polycam)
- **Unvetted contractors:** Thumbtack's *"false sense of safety"*
- **Mid-scan crashes:** RoomScan Pro and Polycam both lose data during capture

---

## 8. The Gap

No app connects all four steps:

```
Scan room  →  AI detects damage  →  Market cost estimate  →  Email builders & hire
(LIDAR/       (from scan)           (local pricing data)     (automated outreach)
 camera)
```

What exists today:

- **Scanners** (magicplan, Polycam, CamPlan) stop at floor plans
- **Damage detection** (Homesly, Home Inspection AI) is photo-based: no scanning, no hiring
- **Hiring platforms** (Angi, Thumbtack) have no scanning, no detection, and predatory pricing
- **Estimators** (Fixer AI, SimplyWise) require you to already know what's wrong
- **All-in-ones** (SimpleRenovate, My Home Genius) skip damage detection

---

## 9. Where We Fit

1. **One flow, problem to solution:** homeowner uses one app instead of four
2. **Commission on completion:** 5% only when a job happens, not per dead lead
3. **Damage detection as the hook:** *"Your wall has water damage → $400 to $1,200 to fix → 3 builders available"* is a complete story nobody else tells
4. **Homeowner-first:** magicplan and CamPlan are contractor tools, Angi and Thumbtack are directories. Nobody builds for the confused homeowner
5. **Transparent pricing:** clear 5% breakdown vs. hidden fees and subscription traps

---

## 10. Risks

| Risk | Severity | Mitigation |
|------|:--------:|------------|
| AI false positives erode trust (cf. magicplan's door/window misclassification) | High | Confidence thresholds, user confirmation before reporting |
| LiDAR only on Pro iPhones, camera fallback must work for everyone | High | Camera-only mode with honest accuracy disclosure |
| Builder supply, cold-start marketplace problem | High | Manual builder onboarding for MVP |
| Angi/Thumbtack have poisoned trust in "hire a pro" apps | Medium | Aggressive transparency: full cost breakdowns, no hidden fees |
| Competitors market as "free for homeowners", 5% needs justification | Medium | Show what the commission buys: better matches, verified builders |
| Space is crowding fast (HomeScan AI, Fixer AI, RepairAI, SimpleRenovate all launched 2025-2026) | Medium | First to combine all four steps in one flow |

---

*Sources: App Store (US/UK/AU), Google Play, Trustpilot (Angi, Thumbtack, Taskrabbit, Polycam), G2, Capterra, Sensor Tower, company websites, PR Newswire (Chrp/Nationwide). October 2026.*
