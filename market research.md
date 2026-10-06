# Market Research

Competitive analysis of existing apps across the four pillars of our project: room scanning, damage detection, cost estimation, and contractor hiring. Based on user reviews from the App Store, Google Play, Trustpilot, and professional review sites.

---

## 1. Room Scanning & Floor Plan Apps

These are the apps most directly overlapping with our LIDAR scanning feature.

### magicplan

**Rating:** 4.7/5 (40K+ App Store ratings, 116K Google Play reviews)

**What users love:**
- Scanning is fast — point phone at corners and rooms are mapped in seconds
- Intuitive UI that beginners pick up quickly
- Real-time floor plans without waiting for cloud processing
- Two free projects with full feature access (no trial clock)
- Great 3D rendering quality
- Regular updates — has stayed compatible with new iOS versions for over a decade
- Saves massive time vs. tape measure and pencil workflow

**What users complain about:**
- Measurements drift when merging rooms — pulling one wall corrupts connected rooms
- Steep learning curve for advanced features (users report 12+ attempts to map a home properly)
- Free plan only allows 2 projects, then requires expensive subscription
- 3D mode is view-only — you can't edit objects in 3D
- Door/window detection is inconsistent (same window detected as door in one scan, window in next)
- "Money sucking app" — one user left a 5-star review specifically so more people would see the pricing complaint
- No tutorials for first-time users — trial and error is the only path
- Furniture placement is imprecise and objects move between sessions

**Our takeaway:** magicplan proves the scanning UX can be polished and fast, but they've failed at making the transition from scanning to action. Users scan a room and then... have to use a different app for estimates, a different app for hiring. That's our opening.

### Polycam

**Rating:** 4.7/5 (43K+ App Store ratings)

**What users love:**
- Scans are accurate enough for professional 3D modeling work
- Free version was generous enough for simple scan/design tasks
- Open-source export formats feed into Blender, SketchUp, nerfstudio
- Photogrammetry mode works on any iPhone (no LiDAR required)
- Great for contractors who need to reference measurements remotely

**What users complain about:**
- Price hikes: went from free → $149/year → now $400/year for basic measurement features
- Dark patterns around free trials — auto-enrolled without clear consent
- Scan data locked behind cloud processing — if you don't renew, you lose access to previously scanned measurements
- Scans disappearing during longer sessions
- App hangs on save, requiring force quit and hoping data survived
- Features progressively stripped out and put behind subscription tiers
- Refund process is hostile — Polycam blocks Apple refunds

**Our takeaway:** Polycam shows what happens when you chase revenue through aggressive pricing. Users feel betrayed. If we keep our pricing transparent and fair (5% commission only when they actually hire someone), we differentiate on trust.

### RoomScan Pro LiDAR

**Rating:** 4.3/5 (2K+ App Store ratings)

**What users love:**
- "Touch phone against walls" method is clever and works well
- Accurate measurements that import directly into Symbility and Xactimate
- Developers actively respond to reviews and fix issues quickly
- Great for insurance adjusters — fills a real market gap

**What users complain about:**
- Crashes frequently, especially with complex rooms (too many transitions)
- Joining rooms often places them in distorted positions with no easy fix
- Steep learning curve — features are not inherently obvious
- Pricing model called "ridiculous" by one reviewer
- Older version (RoomScan Classic) requires 12+ attempts to map a home adequately

**Our takeaway:** RoomScan Pro has a real audience (insurance adjusters, contractors) but the UX is rough. The fact that users need 12+ attempts to map a home tells us the onboarding needs to be dramatically better.

### CamPlan

**Rating:** 4.7/5 (26K+ ratings)

**What users love:**
- AI Video Scan works even without LiDAR (film a walkthrough on any iPhone)
- Full apartment in under 3 minutes
- Works offline — no extra hardware needed
- Clean, editable 2D projects auto-generated from scan
- Export in every format: PDF, PNG, DXF, SVG, USDZ, OBJ, DAE
- Built-in estimation from real measurements (paint, flooring, drywall quantities)
- Simple and intuitive UI

**What users complain about:**
- Limited reviews available — newer entrant
- Subscription model (though not as aggressive as Polycam)

**Our takeaway:** CamPlan is the closest scanning competitor to our vision. They combine scanning with estimation, but they're contractor-focused (they want you to build estimates to send to clients). They don't address the homeowner's side: "I see damage, what's wrong, what should I do about it, who should I hire?"

---

## 2. AI Damage Detection Apps

### Homesly.ai

**Type:** B2B SaaS for property managers and landlords

**What it does:** Walk through a rental unit with your phone → AI flags damage → compares move-in/move-out footage → auto-calculates security deposit deductions → dispatches vendors

**What users love:**
- Automated damage identification saves hours of manual inspection
- Frame-by-frame comparison between move-in and move-out footage
- Auto-drafts deposit calculations with line items
- Vendor dispatch directly from damage findings

**What users complain about:**
- Limited to property management use case — not for homeowners
- Requires both move-in AND move-out footage for comparison
- Enterprise-focused pricing (14-day free trial, then paid)

**Our takeaway:** Homesly validates the concept of AI damage detection from video, but it's exclusively for landlords/managers comparing two states of a property. We're doing something different: detect damage from a single scan and recommend fixes.

### Home Inspection AI (Thomas Enevoldsen)

**Rating:** New app, not enough ratings

**What it does:** Capture photos → AI highlights damage with bounding boxes, confidence, severity, and recommended actions → generate professional PDF reports

**What users love:**
- Detects cracks, water damage, mold, holes in drywall, ceiling/window/door damage, electrical and plumbing issues
- On-device processing by default (privacy)
- Clean PDF report export
- Guided walkthrough for first-time users

**What users complain about:**
- $9.99/week or $29.99/month — extremely expensive for homeowners
- Designed for professional inspectors, not regular homeowners
- Too new to have meaningful user feedback

**Our takeaway:** This confirms the AI damage detection approach works technically. But at $10/week it's priced for professionals, not consumers. We can undercut this dramatically by monetizing through commission instead of subscriptions.

### Chrp (Nationwide Insurance partnership)

**Type:** B2B insurance platform

**What it does:** Guided photo survey through mobile → AI reviews each image against 400+ known failure points → flags corrosion, faulty wiring, fire hazards → generates tailored report

**Key stats:**
- 70% of non-catastrophic homeowners claims begin inside the home
- Water damage is the #2 US homeowners claim type
- Fire losses average $88,000+; water damage often exceeds $15,000
- 30% of homes contain active plumbing hazards likely to lead to a claim within 4 years

**Our takeaway:** The data here is gold for us. Homeowners consistently underestimate interior damage because they don't know what to look for. This validates the entire premise of our app: people need AI to show them what's wrong before it becomes catastrophic.

### HomeScan AI / Fixer AI / RepairAI (new entrants)

All three launched in 2025-2026 with similar value props:
- **HomeScan AI:** Snap a photo → instant AI diagnosis with severity rating, cost estimate, and repair steps
- **Fixer AI:** Describe project + snap photo → instant pricing breakdown (labor, materials, travel) → connect with local pros
- **RepairAI:** Photo of damaged item → AI calls local shops to collect quotes automatically

**What users love (where reviews exist):**
- Speed of getting estimates
- Transparency of cost breakdowns
- Eliminating "endless contractor calls"

**What users complain about:**
- All three are very new with minimal reviews
- Fixer AI has zero reviews — unclear if it works at scale
- RepairAI's AI-calling-shops concept sounds great but trust is low (only 1 rating)

**Our takeaway:** These apps prove the market is moving toward exactly what we're building. But none of them combine physical scanning + damage detection + market research + hiring in one flow. They're all photo-based (point at one thing) rather than room-scan-based (map the whole space).

---

## 3. Contractor Hiring Platforms

### Angi (formerly HomeAdvisor)

**Rating:** 2.5/5 (7K Trustpilot reviews) — this is bad

**What users love:**
- Large network of contractors
- Some homeowners find quality pros (5-star reviews do exist)
- Free to use for homeowners

**What users complain about (this is where it gets ugly):**
- Contractors charged for leads that never convert — "54 leads, only 4 came to fruition"
- Hidden charges and auto-billing after cancellation
- Multiple contractors charged for the SAME lead
- Pros report being charged $350/month subscription + per-lead fees
- "Borders on fraudulent business practices" — one user's exact words
- Contractors with disconnected phone numbers listed as leads
- Customer service is nearly impossible to reach
- Cancellation is deliberately difficult — "hidden language in contracts"
- Pros told different things by sales reps vs. reality

**Our takeaway:** Angi is the cautionary tale. Their business model (charge contractors for leads regardless of quality) has made both sides — homeowners AND contractors — distrustful. Their Trustpilot score of 2.5 with 7,000 reviews tells you everything. We must NOT repeat this.

### Thumbtack

**Rating:** 3.3/5 (6K Trustpilot reviews)

**What users love:**
- Free for customers
- Clean app design
- Wide variety of service categories
- Speed of finding someone

**What users complain about:**
- Contractors charged $40+ per lead even if customer never responds
- Lead quality is poor — customers often don't know they've been "matched"
- Pushy sales reps calling to upsell $300 prepaid credits
- One contractor: "literally paying Thumbtack for people to ignore us"
- No vetting of contractors — "false sense of safety"
- Reviews can't be deleted, only edited once
- Users report unsafe contractors with no background checks

**Our takeaway:** Thumbtack's core problem is misaligned incentives. They optimize for lead volume, not job success. Contractors pay regardless of outcome, so they cut corners on quality. Our 5%-only-when-a-job-happens model aligns incentives correctly.

### Taskrabbit

**Rating:** 4.2/5 (55K Trustpilot reviews)

**What users love:**
- Highest-rated hiring platform in our research
- Taskers are responsive and professional
- Transparent pricing for small tasks
- Good for furniture assembly, small repairs, moving help

**What users complain about:**
- Limited to small tasks — no serious renovation work
- Not suitable for licensed trade work (plumbing, electrical, structural)
- Service fees add up

**Our takeaway:** Taskrabbit's high rating comes from staying in its lane: small, simple tasks. When platforms try to be everything to everyone (Angi, Thumbtack), quality collapses. We should focus on home damage/repair specifically rather than general handyman services.

---

## 4. All-in-One Competitors (Closest to Our Vision)

### SimpleRenovate

**Tagline:** "Scan. Post. Compare. Hire."

**What it does:** Scan room → post project with photos/video → get quotes from verified contractors → compare and hire → track progress → approve payments

**What users love (5.0 from 5 ratings):**
- Scanning captures measurements automatically
- Free to post projects
- Side-by-side comparison of bids, credentials, reviews
- In-app messaging and contract review before payment

**What users complain about:**
- Very few reviews (5 ratings) — too new to judge
- iPhone only
- Contains advertising
- $5 in-app purchase tier

**Our takeaway:** SimpleRenovate is our closest competitor conceptually — they combine scanning with hiring. But they skip damage detection entirely. They assume you already know what you want done. We start from "I don't know what's wrong with my house" which is the actual starting point for most homeowners.

### My Home Genius

**Tagline:** "Scan your home. Know your costs."

**What it does:** LiDAR room scan → instant remodel cost estimates (DIY vs pro) → AI photo diagnosis → home health score → match with vetted local pro → paint codes, filter sizes, appliance history

**What users love:**
- Zip-code-tuned cost estimates
- Home Health Score (0-100) for insurance discount potential
- Breaker panel decoder (photo → AI reads circuits)
- Move-in/move-out home record transfer
- Maintenance reminders

**What users complain about:**
- Very new — limited reviews
- Estimates are "rough planning figures, not quotes"
- Affiliate model raises questions about contractor bias

**Our takeaway:** My Home Genius is conceptually very close to us. They have scanning + estimates + pro matching. Their differentiator is "home memory" (paint codes, filter sizes) and insurance scoring. Our differentiator is damage detection with actionable repair recommendations — they don't do that.

### ArchAI

**Tagline:** "Scan the room. See the redesign. Know the cost."

**What it does:** LiDAR scan → AI redesign visualization → cost estimate → export PDF for contractors

**What users love:**
- Before/after comparison of original scan vs AI redesign
- Cost estimate before calling a contractor
- Furniture library (60+ pieces) for layout testing
- iCloud sync across devices

**What users complain about:**
- LiDAR required for scanning (excludes non-Pro iPhones)
- Focused on aesthetic redesign, not damage assessment
- No contractor hiring integration

**Our takeaway:** ArchAI nails the "visualize before you commit" idea but it's about cosmetic renovation, not damage repair. Nobody is combining "what's broken" + "how much to fix" + "who should fix it" in one flow.

---

## 5. Key Patterns & Opportunities

### What successful apps do well (steal these)

- **Fast scanning UX** — magicplan's "point at corners" and CamPlan's "3 minutes for a whole apartment" set the bar
- **Offline capability** — users hate dependency on cloud processing (Polycam's biggest complaint)
- **Export options** — PDF, CAD, 3D formats; users want to take data elsewhere
- **Active developer response** — RoomScan Pro's devs responding to every review builds trust
- **Free tier with real value** — magicplan's 2 free projects, not a time-limited trial

### What users hate (avoid these)

- **Subscription creep** — Polycam's $400/year backlash, magicplan's "money sucking" reviews
- **Dark patterns around trials** — auto-enrollment, hidden cancel buttons
- **Misaligned incentives** — Angi/Thumbtack charging for leads regardless of outcome
- **Measurement corruption** — magicplan's rooms shifting when you edit one wall
- **Steep learning curves** — multiple apps require 12+ attempts to get basic results
- **No onboarding** — first-time users left to figure it out through trial and error
- **Cloud lock-in** — lose your data if you stop paying
- **Poor contractor vetting** — Thumbtack's "false sense of safety"
- **Crashes during scanning** — RoomScan Pro and Polycam both lose data mid-scan

### The gap nobody fills

No existing app combines all four steps in one flow:

```
1. Scan the room (LIDAR/camera)
   ↓
2. AI identifies damage automatically
   ↓
3. Local market research gives cost estimate
   ↓
4. App emails builders and organizes hiring
```

Current landscape:
- **Scanning apps** (magicplan, Polycam, CamPlan) → stop at floor plans
- **Damage detection apps** (Homesly, Home Inspection AI) → photo-based only, no room scanning, no hiring
- **Hiring platforms** (Angi, Thumbtack) → no scanning, no damage detection, predatory pricing
- **Cost estimators** (Fixer AI, SimplyWise) → require you to already know what's wrong
- **Closest competitors** (SimpleRenovate, My Home Genius) → missing damage detection entirely

### Our unique advantages

1. **Single flow from problem to solution** — homeowner doesn't need 4 different apps
2. **Commission-based pricing** — we only earn when a job actually happens (vs. Angi/Thumbtack charging for dead leads)
3. **Damage detection is the hook** — "your wall has water damage, here's what it costs to fix, here are 3 builders who can do it" is a complete story no one else tells
4. **Homeowner-first perspective** — competitors like magicplan and CamPlan are contractor tools; SimpleRenovate and Angi are directories; nobody builds for the confused homeowner
5. **Transparent pricing** — 5% commission with clear breakdown vs. hidden fees and subscription traps

### Risks to watch

- **AI accuracy** — damage detection needs to be reliable enough that users trust it; false positives erode confidence fast (see magicplan's inconsistent door/window detection)
- **LiDAR dependency** — only Pro iPhones have LiDAR; camera-only fallback must work well enough for the majority of users
- **Builder supply side** — we need actual builders responding to quotes; cold-start problem common in marketplace apps
- **Trust building** — Angi and Thumbtack have damaged user trust in "hire a pro" apps; we need to earn it back with transparency
- **Commission vs. free** — users may resist paying 5% when Angi/Thumbtack claim to be "free for homeowners"; we need to show why our model produces better outcomes

---

*Research conducted October 2026. Sources: App Store reviews, Google Play reviews, Trustpilot, G2, Capterra, company websites, press releases.*
