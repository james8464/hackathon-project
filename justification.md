# Why Tally

**For the Build Challenge: Unaite, MWM, Apple & ⌘+F**

Tally's proposed entry point is **renovation planning**. A person planning work needs a usable scope and budget before asking for quotes. An artisan needs measurements, photos, quantities, and assumptions before giving a useful price. Tally aims to make one scan-based project serve both people: simple for the standard user, detailed for the artisan. LiDAR on supported iPhones, or camera-assisted capture and manual measurements elsewhere, can populate the brief. Visible-condition notes help define the scope.

This is a product hypothesis to test with prospective renovators and artisans. The app has not yet implemented the planned two-role journey, and a scan is not a professional survey.

---

## 1. The problem

Every renovation starts with guesswork: a homeowner may know they want to repaint or replace flooring without knowing the area, preparation, or price. Artisans receive incomplete enquiries and spend time clarifying them, visiting sites, and making free quotes for work they may not win. Tally aims to reduce that friction with a measured, editable brief and a preliminary estimate in minutes. The time saving needs testing with both audiences.

The result is a weak handoff between intent and quote. A clearer brief should help both sides understand the same scope, including what is excluded. Tally should make it easy for a standard user to start without requiring them to speak like a contractor.

## 2. The product thesis

1. **Start with the intended renovation.** The user names the room and the work they want done. Damage is an optional condition note, not a required trigger.
2. **Create a shared project.** A LiDAR room scan on a supported iPhone, or a camera/manual path on another iPhone, produces an approximate plan, photos, quantities, and a scope checklist. The user can correct measurements and confirm any suggested visible issue.
3. **Separate planning from quoting.** Tally shows a budget range with assumptions. The artisan verifies quantities and prepares their own line-item quote with materials, labor, allowances, exclusions, and timing.
4. **Show the right detail to each role.** A first-launch choice selects Standard user or Artisan. The role can change later; the underlying project remains the same.
5. **Make the commercial terms clear.** Homeowners receive a limited number of free quote requests; artisans receive a few free quote drafts before a paid plan. Proposed paid tiers expand access. A separate 5% fee applies only to completed jobs booked through Tally and must be shown before commitment.

6. **Improve estimates through evidence.** The intended pricing model uses work scope, quantities, location, and Tally-validated completed local jobs. No such job-history dataset exists yet; the prototype uses sourced local rates. We will measure scan-to-estimate time and compare error with real jobs before claiming a two-minute flow or better accuracy than a general LLM.

The main test is whether this shared brief reduces clarification work for artisans and helps standard users judge quotes with more confidence. The hackathon demo can test the interaction using one prepared local project. It cannot prove a live marketplace or completed-job economics.

## 3. Why an iPhone app

- ARKit and LiDAR where available can speed up room capture. Camera and manual entry keep the flow usable without a Pro device.
- On-device image processing keeps draft home imagery local until the user chooses to share it.
- SwiftUI and system materials support a familiar, accessible interface for both role views.
- Share sheets let users send a project brief or quote draft during the demo without building a backend.

Dimensions from a phone are approximate. The interface must say so, let users correct them, and tell artisans to verify them before a binding quote. Optional AI condition flags must be user-confirmed and must not claim to find hidden or structural faults.

## 4. Competitive context

The existing [`market research.md`](market%20research.md) documents room scanners, estimating tools, renovation products, and hiring platforms. magicplan has professional floor-plan estimating with custom price libraries, while Obat provides an integrated construction price library and quoting tools. Other products also cover parts of renovation planning. Tally's proposed distinction is a homeowner planning estimate and an artisan-authored quote on the same scan-based project, with local completed-job pricing once a verified dataset exists.

That distinction is a hypothesis, not an established market fact. Before launch, recheck competitor features and interview both sides. The early launch should focus on one city and one or two common work categories, such as painting and flooring.

## 5. Business and trust

The proposed model combines limited free homeowner quote requests, a few free artisan quote drafts, paid plans for additional use, and a disclosed 5% platform fee on a completed job booked through Tally. An illustrative €3,000 job would produce a €150 fee. Free limits, subscription prices, the fee payer, collection method, taxes, refunds, and payout terms remain to be validated. The test build should show only a clearly simulated fee breakdown, without live charges.

Trust depends on accurate labels:

- A Tally budget is a **planning estimate**, not an artisan quote.
- Scan measurements are **approximate**, not construction-grade.
- Seeded artisans and quotes in the demo are **simulated**, not live responses.
- An AI flag is a **possible visible issue**, not a diagnosis.
- A quote draft is controlled by the artisan, including exclusions and schedule.

These distinctions make the product easier to use honestly and keep the two sides aligned on what has actually been agreed.

## 6. Why it fits the challenge

The demo can show a complete, native iPhone concept in three minutes: choose a role, open a renovation project, review the plan and budget, compare prepared quotes, switch to Artisan, and draft a detailed quote from the same project. The technical work is concrete—room capture, local project data, estimates, and a clear dual-view interface—while the business work is equally concrete: validate scope clarity with renovators and quote usefulness with artisans.

The practical cut is in [`planning.md`](planning.md): no live two-sided backend, production subscriptions or payments, or automated diagnosis in the first test build. As of 8 October 2026, the app is still an Xcode starter screen with its icon; the two-day target is an internal test build, not a public release claim.
