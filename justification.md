# Why Tally

**For the Build Challenge: Unaite, MWM, Apple & ⌘+F**

Tally's proposed entry point is **renovation planning**. A person planning work needs a usable scope and budget before asking for quotes. An artisan needs measurements, photos, quantities, and assumptions before giving a useful price. Tally aims to make one project brief serve both people: simple for the standard user, detailed for the artisan. A room scan and optional visible-condition notes help populate that brief.

This is a product hypothesis to test with prospective renovators and artisans. The app has not yet implemented the planned two-role journey, and a scan is not a professional survey.

---

## 1. The problem

Renovation decisions often begin with an imprecise idea: “repaint the kitchen” or “replace the floor.” That is enough to start a conversation, but not enough to compare quotes fairly. People may not know the area, the preparation needed, or whether a visible stain should be included. Artisans receive incomplete enquiries and must spend time clarifying them before they can price the work.

The result is a weak handoff between intent and quote. A clearer brief should help both sides understand the same scope, including what is excluded. Tally should make it easy for a standard user to start without requiring them to speak like a contractor.

## 2. The product thesis

1. **Start with the intended renovation.** The user names the room and the work they want done. Damage is an optional condition note, not a required trigger.
2. **Create a shared project.** An iPhone scan or manual measurement path produces an approximate plan, photos, quantities, and a scope checklist. The user can correct all measurements and confirm any suggested issue.
3. **Separate planning from quoting.** Tally shows a budget range with assumptions. The artisan verifies quantities and prepares their own line-item quote with materials, labor, allowances, exclusions, and timing.
4. **Show the right detail to each role.** A first-launch choice selects Standard user or Artisan. The role can change later; the underlying project remains the same.
5. **Make the commercial terms clear.** Planning and quote requests are free. The proposed 5% fee applies only to completed jobs booked through Tally and must be shown before commitment.

The main test is whether this shared brief reduces clarification work for artisans and helps standard users judge quotes with more confidence. The hackathon demo can test the interaction using one prepared local project. It cannot prove a live marketplace or completed-job economics.

## 3. Why an iPhone app

- ARKit and LiDAR where available can speed up room capture. Camera and manual entry keep the flow usable without a Pro device.
- On-device image processing keeps draft home imagery local until the user chooses to share it.
- SwiftUI and system materials support a familiar, accessible interface for both role views.
- Share sheets let users send a project brief or quote draft during the demo without building a backend.

Dimensions from a phone are approximate. The interface must say so, let users correct them, and tell artisans to verify them before a binding quote. Optional AI condition flags must be user-confirmed and must not claim to find hidden or structural faults.

## 4. Competitive context

The existing [`market research.md`](market%20research.md) documents room scanners, estimating tools, renovation products, and hiring platforms. Several already serve parts of renovation planning; SimpleRenovate and My Home Genius are especially relevant comparisons. We should not pitch Tally as the only renovation app. The proposed distinction is the shared project brief and two role-specific views that carry the same measurements and scope into an artisan-authored quote.

That distinction is a hypothesis, not an established market fact. Before launch, recheck competitor features and interview both sides. The early launch should focus on one city and one or two common work categories, such as painting and flooring.

## 5. Business and trust

The proposed model is a disclosed 5% platform fee on a job booked through Tally and completed. An illustrative £3,000 job would produce a £150 fee. The payer, collection method, taxes, refunds, and payout terms remain to be validated. The hackathon build should show only a clearly simulated fee breakdown.

Trust depends on accurate labels:

- A Tally budget is a **planning estimate**, not an artisan quote.
- Scan measurements are **approximate**, not construction-grade.
- Seeded artisans and quotes in the demo are **simulated**, not live responses.
- An AI flag is a **possible visible issue**, not a diagnosis.
- A quote draft is controlled by the artisan, including exclusions and schedule.

These distinctions make the product easier to use honestly and keep the two sides aligned on what has actually been agreed.

## 6. Why it fits the challenge

The demo can show a complete, native iPhone concept in three minutes: choose a role, open a renovation project, review the plan and budget, compare prepared quotes, switch to Artisan, and draft a detailed quote from the same project. The technical work is concrete—room capture, local project data, estimates, and a clear dual-view interface—while the business work is equally concrete: validate scope clarity with renovators and quote usefulness with artisans.

The practical cut is in [`planning.md`](planning.md): no live two-sided backend, production payments, or automated diagnosis in the hackathon must-have scope. The result should be a believable first step toward a real renovation workflow, with its limitations visible rather than hidden.
