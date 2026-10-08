# Tally iPhone design system

- [Open the live Figma file](https://www.figma.com/design/Y9asB4rM1J0tJcbr7Wim2q)
- [Editable local Figma copy](Tally%20%E2%80%94%20iPhone%20Design%20System.fig)
- [iPhone screen previews](Tally%20iPhone%20previews.png)

The live file has four pages: identity, semantic color and typography foundations, editable iPhone examples, and design decisions. The `.fig` file is a snapshot saved from Figma Desktop. Import it into Figma to restore an editable copy; use the live file for current edits.

## Design direction

- Follow iOS navigation, lists, system controls, and Dynamic Type. The app icon's custom floor plan and magnifier are the identity; SF Symbols belong in interface actions, not the logo.
- Use system background and label colors, with system blue only for actions and selected navigation. The Figma file includes Light, Dark, and increased-contrast modes. Hex values are previews; app code should use dynamic UIKit/SwiftUI colors.
- Use SF Pro through SwiftUI system text styles. The Figma renderer does not display SF Pro, so specimen text uses Inter as a preview fallback. Seven named SF Pro text styles are included for handoff. Do not bundle SF Pro in the app.
- Reserve Liquid Glass for navigation and controls. Project content uses opaque or standard material surfaces.
- Distinguish a Tally planning estimate from an artisan quote. Show approximate measurements and the price source, date, and assumptions.
- Check 44 pt minimum hit areas, Dynamic Type, VoiceOver, Reduce Transparency, and contrast on real iPhones before implementation is considered complete.

## Apple references

[Designing for iOS](https://developer.apple.com/design/human-interface-guidelines/designing-for-ios/) · [Color](https://developer.apple.com/design/human-interface-guidelines/color) · [Typography](https://developer.apple.com/design/human-interface-guidelines/typography) · [Dark Mode](https://developer.apple.com/design/human-interface-guidelines/dark-mode) · [Materials](https://developer.apple.com/design/human-interface-guidelines/materials) · [SF Symbols](https://developer.apple.com/design/human-interface-guidelines/sf-symbols) · [Buttons](https://developer.apple.com/design/human-interface-guidelines/buttons) · [Accessibility](https://developer.apple.com/design/human-interface-guidelines/accessibility)
