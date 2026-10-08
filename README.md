# Tally

Tally is a planned iPhone app for renovation work. A homeowner scans a room with LiDAR on a supported iPhone, or uses camera capture and manual measurements on another iPhone, to create a shared project brief and receive a preliminary price estimate in minutes. An artisan sees the same project with quantities, photos, assumptions, and condition notes, verifies the measurements, and drafts a detailed quote. A scan may reveal visible issues that belong in the work scope; it cannot inspect hidden damage.

On first launch, the planned app asks users to choose **Standard user** or **Artisan**. The choice changes the home screen and level of detail and can be changed later in Settings. Homeowners would get a limited number of free quote requests; artisans would get a few free quote drafts before a paid plan. A proposed 5% platform fee would apply to a job booked through Tally and completed, with the payer and terms disclosed before booking.

**Current state (8 October 2026):** the repository contains the Xcode starter UI and the finished app icon. Scanning, pricing, role selection, subscriptions, and booking are planned, not implemented. The team intends to begin testing now and target a testable build within two days; public release depends on implementation, validation, and App Store review.

Project for the October 2026 Build Challenge: Unaite, MWM, Apple & ⌘+F.

## Documents

- [`planning.md`](planning.md): product scope, both role flows, MVP, technical approach, timeline
- [`justification.md`](justification.md): why this renovation-first product is worth building
- [`market research.md`](market%20research.md): competitor landscape and questions to validate
- [`pitch.md`](pitch.md): proposed three-minute demo and judge answers
- [`Tally/GIT guide.md`](Tally/GIT%20guide.md): current `main` branch workflow

## Team

- James
- Klaus
- Theophile
- Guilhem

## Open the iPhone project

1. Clone the repository and switch to `main`.
2. Open `Tally/Tally.xcodeproj` in Xcode.
3. Choose an iPhone simulator or connected iPhone and build the `Tally` scheme.

The app icon is in `Tally/Tally/AppIcon.icon`. The previous house-and-magnifier icon is archived in `Tally/IconArtwork/Original-AppIcon.icon`.
