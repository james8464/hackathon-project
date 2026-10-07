# Market Research

Competitive notes originally assembled for a damage-first concept across room scanning, damage detection, cost estimation, and hiring. Tally is now positioned around **renovation planning** for standard users and detailed project briefs and quote drafting for artisans. Treat prices, ratings, and product features below as a research snapshot to recheck before using them in a pitch. Sources noted in the original research: App Store, Google Play, Trustpilot, G2, Capterra, Sensor Tower, PR Newswire, and company sites. October 2026.

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

**Question for Tally:** can a scan become an editable renovation brief that both the person planning the work and the artisan can use?

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
- But it is built for contractors creating estimates for clients. Tally's updated hypothesis is that the same project information can support a simpler standard-user brief and a detailed artisan quote view.

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

This is a comparison for the original damage-first concept. Tally's current plan treats visible condition notes as optional scope inputs; it does not promise single-scan diagnosis.

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
- Useful reference for how photo findings are presented; it does not validate Tally's renovation workflow or proposed fee.

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

This belongs to the earlier damage-assessment research. It may inform optional condition notes, but insurance risk assessment is not Tally's primary use case.

### New Entrants (2025-2026)

Three apps launched recently with overlapping value props:

| App | Flow | Ratings |
|-----|------|--------:|
| **HomeScan AI** | Photo → AI diagnosis (severity + cost + repair steps) | 3 · 5.0★ |
| **Fixer AI** | Project description + photo → pricing breakdown → match with pros | 0 |
| **RepairAI** | Photo → AI calls local shops to collect quotes | 1 · 5.0★ |

The shared lesson:

- These small or recent products need fresh verification before comparison.
- Photo-first estimates show demand for early price guidance.
- Tally should test whether a measured, editable renovation brief is more useful to both sides than a photo-only estimate.

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

The lesson for Tally is to test whether artisans value a complete project brief and to avoid charging for unqualified leads.

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

The proposed 5%-on-completion model needs validation with artisans and standard users; a clear scope and fee disclosure matter more than a headline rate.

### Taskrabbit

4.2★ across 55K Trustpilot reviews, the highest-rated hiring platform in this research.

What works:

- Taskers are responsive and professional
- Pricing is transparent for small tasks

Why it works:

- Stays in its lane: furniture assembly, small repairs, moving help
- No serious renovation, no licensed trade work
- Platforms trying to serve everyone (Angi, Thumbtack) see quality collapse
- We should scope the first Tally launch to a few common renovation categories

---

## 4. All-in-One Competitors

| App | Scanning | Damage Detection | Estimation | Hiring | Entry Point |
|-----|:--------:|:----------------:|:----------:|:------:|-------------|
| SimpleRenovate | ✅ | ❌ | ❌ | ✅ | "I know what I want" |
| My Home Genius | ✅ | Photo only | ✅ | ✅ | "What are my costs?" |
| ArchAI | ✅ | ❌ | ✅ | ❌ | "How will it look?" |
| SimplyWise | ✅ | ❌ | ✅ | ❌ | "Price this job" (pro) |
| **Tally (planned)** | **✅** | **Optional** | **✅** | **✅** | **"Plan the work"** |

### SimpleRenovate

"Scan. Post. Compare. Hire." Scan your room, post the project with photos/video, get quotes from verified contractors, compare side-by-side, hire, track, approve payments. Free to post, $5 in-app purchase tier.

- Conceptually the closest to us: scanning plus hiring in one flow
- But it skips damage detection entirely
- Their renovation-first entry point is now close to Tally's intended audience
- Compare how each product handles scope details, editable measurements, and the artisan-side quote view before making a differentiation claim
- Only 5 ratings so far, iPhone only, contains ads

### My Home Genius

"Scan your home. Know your costs." LiDAR scan, instant remodel estimates (DIY vs pro), AI photo diagnosis, home health score (0-100), match with a local pro, paint codes, filter sizes, appliance history.

- Conceptually very close to us
- Their differentiators: home memory (paint codes, filter sizes, breaker panel decoder) and insurance scoring
- Its distinction between planning figures and quotes is appropriate; Tally should make the same distinction explicit
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
- Tally should test a shared brief that starts with the standard user and carries through to the artisan quote

---

## 5. Comparison for the renovation-first concept

| Product group | Examples | Relevant capability | Question to investigate |
|---------------|----------|---------------------|-------------------------|
| Room capture | magicplan, Polycam, CamPlan | Plans and approximate quantities | How easily can a standard user turn the plan into work scope? |
| Renovation and hiring | SimpleRenovate, My Home Genius | Planning, estimates, or professional matching | How detailed is the shared brief and the artisan quote workflow? |
| Pro estimating | SimplyWise | Materials and labor estimates | Can an artisan correct project inputs and explain exclusions? |
| Service marketplaces | Angi, Thumbtack | Finding professionals | Does a better brief improve quote comparability and lead quality? |

Tally's two-role project record is a proposed product design, not a validated feature advantage. Recheck current competitor capabilities before claiming a gap.

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

## 8. Renovation-first opportunity to validate

The earlier damage-first thesis was “scan → detect → estimate → hire.” The current product direction is “choose work → capture or enter measurements → confirm scope → plan budget → send a brief → compare artisan quotes.” Optional condition notes help avoid omissions; they are not the main reason to start.

Several products in this document already scan rooms, estimate renovation costs, or connect customers with professionals. In particular, SimpleRenovate and My Home Genius mean that “renovation planning plus hiring” cannot be treated as empty whitespace. The proposed Tally distinction is a shared project record shown at two levels: plain-language planning for a standard user and verified quantities plus a line-item quote draft for an artisan.

Research questions before claiming an advantage:

1. Do prospective renovators prefer a measured brief over photos and a free-text description?
2. Do artisans trust and use approximate room measurements when they can correct them?
3. Which work categories have enough pricing structure for a useful early range?
4. How do the closest competitors handle artisan-side quoting, exclusions, and revisions today?

## 9. Where We Fit

- **Standard user:** state the intended renovation, create an editable room brief, understand a planning budget, and compare the scope included in artisan quotes.
- **Artisan:** inspect the same project with more detail, verify quantities, and author a quote rather than inherit an algorithmic price.
- **Trust:** label measurements as approximate, estimates as planning figures, and demo quotes as simulated. Disclose the proposed completion fee before a booking.
- **Initial market:** one city and one or two work categories, then expand only after interviews with both sides.

---

## 10. Risks

| Risk | Severity | Mitigation |
|------|:--------:|------------|
| Approximate scan dimensions mislead quote decisions | High | Editable measurements and artisan verification before a binding quote |
| LiDAR only on Pro iPhones, camera fallback must work for everyone | High | Camera-only mode with honest accuracy disclosure |
| Artisan supply and two-sided handoff | High | Manual artisan recruitment; prepared local projects for the demo |
| Angi/Thumbtack have poisoned trust in "hire a pro" apps | Medium | Aggressive transparency: full cost breakdowns, no hidden fees |
| The proposed 5% fee may not suit both sides | Medium | Test who pays and show the fee before commitment |
| Renovation competitors already overlap with the concept | High | Recheck current features and validate the shared two-role brief |

---

*Sources: App Store (US/UK/AU), Google Play, Trustpilot (Angi, Thumbtack, Taskrabbit, Polycam), G2, Capterra, Sensor Tower, company websites, PR Newswire (Chrp/Nationwide). October 2026.*
