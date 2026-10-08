# Pitch

Working pitch for the October 2026 Build Challenge. The product and business claims below describe the intended app. As of 8 October, the repository still has the Xcode starter UI and icon; the team is beginning tests and targeting an internal test build within two days.

## One-liner

Tally turns an iPhone room scan into a measured renovation brief and a preliminary local price estimate, then gives an artisan the same project to verify and quote.

## Three-minute story

**The problem:** Every renovation starts with guesswork. Homeowners struggle to describe the work and set a budget; artisans spend time on site visits and free quotes for jobs they may never win.

**The product:** A homeowner chooses the intended work, scans a room with LiDAR on a supported iPhone or uses camera capture and manual measurements, confirms any visible condition issues, and sees a preliminary planning range in minutes. An artisan opens the shared project, checks the dimensions and quantities, then drafts a detailed quote. The first-launch choice shows a simpler Standard user view or a detailed Artisan view.

**The price advantage to prove:** Tally intends to combine scope, quantities, location, and a history of completed local jobs validated by Tally. That job-history dataset does not exist yet. The prototype uses a dated, sourced local rate table. We must test the two-minute flow and compare estimate error with real job prices before claiming greater accuracy than a general LLM.

**The business:** Homeowners receive a limited number of free quote requests, and artisans receive a few free quote drafts. Proposed paid plans expand those allowances. Tally also proposes a disclosed 5% fee when a job booked through Tally is completed. Prices, limits, payer, and billing flow still need validation; demo charges are simulated.

**The distinction:** magicplan can generate estimates from floor plans using a professional estimator and custom price libraries. Obat includes a substantial built-in price library and artisan quoting tools. Tally's proposed difference is one scan-based project that gives homeowners a planning range before contacting a professional and gives artisans a detailed, editable brief for their own quote. We need to validate this workflow with both audiences and avoid claiming that competitors cannot estimate prices.

**The close:** A native iPhone workflow could give both sides a more useful starting point for renovation work. We are beginning tests now and targeting a testable internal build within two days, with public release dependent on implementation, validation, and review.

## Demo path

1. Choose Standard user and open a prepared painting-and-flooring project.
2. Show the supported LiDAR capture or saved room plan, plus camera/manual fallback.
3. Correct an approximate measurement and confirm a visible condition note.
4. Show a planning range with location, source date, assumptions, and free quote allowance.
5. Show simulated artisan responses, clearly labeled as demo data.
6. Switch to Artisan; verify quantities and draft a line-item quote from the same project.
7. Show proposed paid-plan allowances and a simulated 5% completed-job fee.

Keep a recording of the same flow as a fallback. Do not imply that seeded artisans, quote responses, completed-job data, or payments are live.

## Judge questions

**Is the estimate a quote?** No. It is a preliminary planning range. The artisan verifies measurements, chooses materials and labor, and controls the final quote.

**Can every iPhone make a LiDAR scan?** No. Apple's RoomPlan capture requires a LiDAR device. The planned fallback is camera-assisted capture with manual measurement correction.

**Can Tally detect damage?** It can help record visible issues for the work scope. It does not diagnose hidden or structural problems.

**Is it more accurate than ChatGPT?** That is a testable hypothesis, not a current fact. We will compare estimates with completed local jobs and a general LLM baseline after obtaining validated data.

**Can you ship in two days?** The goal is an internal test build. The checked-in app is still a starter UI, and a public release requires a working flow, device testing, and App Store review.

## Sources for competitor and platform wording

- [Apple RoomPlan device support](https://developer.apple.com/documentation/RoomPlan/RoomCaptureSession/isSupported)
- [magicplan PRO Estimator](https://help.magicplan.app/estimate-plan)
- [Obat built-in price library](https://www.obat.fr/devis-factures/bibliotheques/)
