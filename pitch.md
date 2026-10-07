# Pitch

Working pitch for the October 2026 Build Challenge. The renovation-first positioning and two-role flow still need user and artisan validation. The app currently has a starter UI; the product journey below is the intended demo, not a claim that it is already implemented.

---

## One-liner

Tally turns a room scan into a renovation plan: a clear scope and budget for the person doing the work, and a detailed brief and quote draft for the artisan who will deliver it.

## Structure (3:00)

**0:00–0:25 | The problem**

- You know you want to renovate a room, but measuring it, defining the work, and getting comparable quotes are separate jobs.
- Vague briefs produce vague prices. Artisans need quantities, photos, and assumptions before they can quote responsibly.

**0:25–0:50 | The product**

- On first launch, choose Standard user or Artisan.
- Standard mode: plan the work, scan or enter measurements, see a planning budget, and send one brief.
- Artisan mode: review the same project with measurements and scope detail, then draft a line-item quote.
- Condition flags help catch visible issues that may affect the scope; they are not a structural diagnosis.

**0:50–1:50 | Live demo**

Show one kitchen refresh project in both roles. Use a prepared local project and clearly label seeded artisans and quotes as simulated.

**1:50–2:15 | Why it is different**

Room scanners, renovation estimators, and hiring services overlap with parts of this journey. Our hypothesis is that a shared, role-specific brief can make the handoff between renovator and artisan clearer. We will validate that hypothesis with both sides rather than claim no competitor serves renovation.

**2:15–2:40 | Business**

Planning and requesting quotes are free. The proposed model is a disclosed 5% platform fee on jobs booked through Tally and completed. Real payer, billing, and payout operations need validation before launch; the demo shows the calculation only.

**2:40–3:00 | Close**

Built for iPhone: room capture, on-device processing, system-native UI, and a manual path when scanning is unavailable. Next: validate a narrow renovation category in one city with real users and artisans.

## Demo script (60–70 seconds)

| Step | Action | What judges see |
|------|--------|-----------------|
| 1 | Choose Standard user | A simple renovation-focused home |
| 2 | Open a prepared kitchen project | Requested painting and flooring work |
| 3 | Scan or review its saved plan | Approximate dimensions that can be corrected |
| 4 | Confirm the scope | Work checklist and one user-confirmed water stain |
| 5 | View budget and share brief | Planning range, assumptions, three seeded artisans |
| 6 | Compare quotes | Clearly simulated prices, scope, exclusions, timing |
| 7 | Switch to Artisan | Detailed measurements and editable quantities for the same project |
| 8 | Draft a quote | Materials, labor, allowances, and schedule |

Keep a recording of the same flow as a fallback. Do not imply simulated quote responses came from real artisans.

## Slides (8 max)

1. Renovation planning problem and two-sided handoff
2. Demo of one project in both roles
3. Standard user flow
4. Artisan detailed view and quote draft
5. Competitive landscape and the shared-brief hypothesis
6. Business model and transparent fee example
7. Validation plan: renovators and artisans
8. Team and next milestone

## Anticipated questions

**Is Tally a damage assessment app or a renovation app?**

Renovation planning is the entry point. The user states the work they want done. A scan and optional condition notes help make the scope more complete. We do not promise hidden-damage detection or professional inspection.

**How accurate are the measurements and estimates?**

Measurements are approximate until corrected and verified by an artisan. Tally shows a planning range with assumptions, not a binding quote. An artisan controls their own quantities and final offer.

**What does the role choice change?**

Standard mode uses plain language, a simple plan, budget, and quote comparison. Artisan mode shows measurements, photos, line items, materials, labor, and exclusions. A person can change roles later without losing the project.

**Do quotes really arrive in the demo?**

No. The hackathon build has no live marketplace backend. Seeded artisans and incoming quotes are labeled as simulated. A real artisan can draft and share a quote locally; live delivery is a later phase.

**Why a 5% fee?**

It is a proposed fee on completed jobs, disclosed before booking. The demo shows the math, not a real charge. Interviews and production payment design must validate who pays and how it is collected.

**Can you ship two roles in a short hackathon?**

Both roles use the same local project model and prepared demo project. The standard flow is built first; Artisan is a more detailed view and quote draft. Live accounts, sync, payments, and automated condition detection are outside the must-have scope.

## Pitch hygiene

- Rehearse to three minutes and include one role switch.
- Mark all seeded profiles and quotes as demo data.
- Keep a prepared project and screen recording on the demo device.
- Say “planning estimate” and “artisan quote” consistently.
