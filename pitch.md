# Pitch

The Build Challenge asks for a 3-minute pitch plus a submitted build. This is the script, the demo, and the answer sheet for whatever the judges ask.

---

## One-liner

Tally scans your home, finds damage you didn't know you had, tells you what it costs to fix, and gets you builder quotes. One app instead of four.

---

## Structure (3:00)

**0:00 to 0:25 | The hook**

- Open with the question everyone has asked in a house: *"Is that crack new?"*
- Nobody knows. So they do nothing. Then it becomes a $15,000 water damage claim
- Stat: 70% of non-catastrophic insurance claims start *inside* the home (Chrp/Nationwide)
- Today the answer costs $300 to $600 and a week of waiting for an inspector

**0:25 to 0:50 | What Tally does**

- Four steps, one app: scan, detect, estimate, hire
- Free for homeowners. We take 5% only when the job is actually done
- One sentence: *"We turn your iPhone into the home inspector you never called"*

**0:50 to 1:50 | Live demo** (script below, screen recording as fallback)

**1:50 to 2:15 | Why nobody has done it**

- Show the capability matrix (one slide): scanners stop at floor plans, detectors are photo-only, hiring platforms are rated 2.5 to 3.3 stars
- Four structural reasons the gap exists: hardware just matured, AI was siloed, business models were misaligned, four apps means four companies
- We're the first team with no legacy revenue to protect

**2:15 to 2:40 | Business**

- 5% on completed jobs. Homeowners pay nothing, builders pay nothing to receive quotes
- One £3,000 job = £150 to us. 10 jobs a month in one city = £1,500/month, no inventory, no staff
- Angi charges contractors $350/month plus per-lead for a 2.5-star experience. Our incentives are the opposite

**2:40 to 3:00 | Close**

- Built for the Apple stack: LiDAR scanning, on-device Vision and Core ML, Foundation Models summaries, StoreKit 2 for the premium tier
- Submitted to the App Store, privacy-first: nothing leaves the device
- Ask: what's next is one city, real builders, and the model improving with every confirmed scan

---

## Demo script (60 to 70 seconds)

Pre-conditions: demo device unlocked, app on home screen, one room already prepared (pre-scanned fallback loaded if anything fails).

| # | Action | What judges see | Time |
|---|--------|-----------------|------:|
| 1 | Tap Scan, sweep the kitchen wall | Live AR overlay, progress, capture | 15s |
| 2 | Tap finish | Results: 2 detections, bounding boxes, health score 72 | 10s |
| 3 | Tap the crack | Detail: type, confidence 0.83, suggested repair, $400 to $1,200 | 8s |
| 4 | Tap "Get estimates" | Cost range with breakdown, regional adjustment, plain-English summary | 8s |
| 5 | Tap "Contact builders" | 3 seeded builders near the address | 5s |
| 6 | Select all, send | Native mail composer pre-filled (or demo-mode send) | 5s |
| 7 | Quotes arrive (simulated) | Comparison table: price, timeline, rating | 8s |
| 8 | Accept one | Commission breakdown: $3,000 base + $150 Tally = $3,150 | 6s |
| 9 | Share report | PDF via share sheet | 5s |

Running line while demoing: *"One tap from scan to a booked builder, and the only number we added is the 5%."*

Backup if live fails: switch to screen recording (captured during rehearsal), say *"Here's the same flow recorded this morning"* and keep talking. Never debug on stage.

---

## Slides (8 max)

1. **Problem**: the crack photo + the $15,000 stat
2. **Demo video**: 45-second loop of the flow (always prepared, even if demo runs live)
3. **How it works**: four-step diagram, Apple tech called out under each step
4. **The gap**: capability matrix, Tally row all checkmarks
5. **Why now**: LiDAR since 2020, on-device inference matured, nobody has connected the steps
6. **Business**: 5% model, unit economics, comparison to Angi's $350/month
7. **Validation**: 5 user interview quotes, competitor ratings from Trustpilot
8. **Team + ask**: four names, two tech two business, submitted to App Store

---

## Anticipated questions

**How accurate is the damage detection?**

Two-tier design. Baseline heuristics (Vision edges, color anomalies, saliency) catch candidates reliably. Our Create ML classifier targets 75%+ precision on a held-out test set. Every detection shows a confidence score, users confirm or reject before anything reaches a builder, and we label the feature beta rather than overpromise. False positives cost trust, so the UX is built around user confirmation.

**Why doesn't magicplan just add this?**

Their revenue comes from contractor subscriptions scanning for floor plans. Consumer hiring would fight their own customer base. Angi and Thumbtack could bundle scanning, but they're locked into per-lead fees that generated their 2.5 and 3.3 star ratings. The four pieces sit in four industries with no incentive to merge them. That's the structural gap in `market research.md`.

**How do you get builders onto the platform?**

Outbound email, city by city, starting with the seeded relationships we research during prep week. Builders are reachable professionals with websites and licenses, unlike consumer marketplaces where both sides must arrive simultaneously. Angi proved demand exists at $350/month. We ask for nothing until jobs are flowing.

**What about App Review?**

Camera and location permissions requested in context with clear purpose strings. All image analysis on-device, nothing uploaded, so the privacy label says "data not collected." The 5% commission bills on physical repair services, permitted outside IAP under guideline 3.1.5 (the Airbnb/Uber model). Premium builder subscriptions use StoreKit 2 as required. Onboarding discloses the fee with a concrete example and an explicit checkbox.

**Why 5%? Is that enough?**

It undercuts everything contractors currently pay: Angi's $350/month plus per-lead, Thumbtack's $40+ per lead. And it only charges when work completes. At 10 jobs a month in one city it's £1,500/month with zero fulfillment cost. The number can rise or fall later; alignment matters more than the exact figure today.

**What happens when the AI is wrong?**

Users confirm every detection before it appears in a report. Confidence thresholds gate what's shown. We document known weak spots (wall colors, lighting) in the app. The alternative, pretending certainty, is what kills trust in this category.

**Isn't the market crowded? (Fixer AI, HomeScan AI, RepairAI, SimpleRenovate)**

All launched in the last 18 months, all photo-only single-point tools, all tiny (0 to3 ratings). None scan a physical space, none combine all four steps. Crowded at the entry point, empty at the integration level.

**What's the cold-start problem?**

Classic two-sided marketplaces need both sides at once. We don't: homeowners get a free, useful scan with no marketplace dependency. Builders join because leads arrive. The scan is the acquisition engine, the marketplace is the monetization. Supply builds behind existing demand.

**Can you actually ship this in two days?**

`planning.md` names every cut: no backend, bundled cost data, seeded builders, simulated demo quotes, Mailgun and Stripe Connect pushed post-hackathon. Every must-have screen exists in the plan with an owner. Feature freeze is midday October16 so the demo gets rehearsals instead of features.

**Where do you go after the hackathon?**

One launch city, real builder recruitment, backend quote delivery, then property data APIs (comparables, permits). The model retrains on user-confirmed labels, which is a compounding advantage nobody in the space has today.

---

## Pitch hygiene

- Rehearse to a timer. Cut anything at 3:10 without mercy
- Three full run-throughs on build day 2, including the failure path
- Screen recording made on the same device, same room
- Phone in airplane mode for one rehearsal: if the flow survives, the network can't kill the demo
- Business profiles lead sections 1, 5, 6; tech profiles lead 3 and 4 and field accuracy questions
- No reading slides. The matrix and the math are visual aids, not scripts
