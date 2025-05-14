# Fresco

**Fresco** is a modular, scalable design system built in SwiftUI. It provides a consistent foundation of colors, typography, spacing, and reusable components for building beautiful and accessible iOS apps.

---

## What's Included

- Design Tokens: Color, spacing, font, and layout constants
- Typography: TitleText, SubtitleText, BodyText, and ErrorText
- Inputs: CustomTextField, SecureEntryTextField, Chips, Toggles, Sliders
- Buttons: Primary, Secondary, Icon, and Text buttons
- Feedback: Toasts, Snackbars, Inline errors, Loading indicators
- Media: AvatarImage, RoundedImage, AspectRatioImage
- Layout Helpers: CardView, Stacks, Containers, Divider
- Data Display: Empty state views, badges, list/grid items

> Component previews are available in [FrescoDemoApp](https://github.com/disruptiveio/FrescoDemoApp)

---

## Installation

### Add via Swift Package Manager

In Xcode:

1. Go to File > Add Packages…
2. Enter the URL: `https://github.com/disruptiveio/Fresco.git`
3. Choose the latest version or main branch
4. Add to your app target

---

## Usage

Import Fresco in your SwiftUI views:

```swift
import Fresco

var body: some View {
    VStack(spacing: AppSpacing.medium) {
        TitleText("Welcome")
        PrimaryButton(title: "Continue") { }
    }
    .padding()
    .background(AppColors.appBackground)
}
```

---

## Requirements

- iOS 18+
- Swift 6.1+
- Xcode 16.3+

---

## Roadmap

### Foundation (Next Few Weeks)

- [ ] Component Polish: Add missing states (e.g. loading, disabled, error)
- [ ] Dark Mode Tuning: Ensure contrast and appearance fidelity
- [ ] Accessibility Pass: VoiceOver, Dynamic Type, color contrast
- [ ] Token Abstraction: Modularize AppColors, AppFonts, AppSpacing

### Testing & Quality

- [ ] Snapshot Testing (e.g. Point-Free's swift-snapshot-testing)
- [ ] Visual State Demos: Showcase all states of a component in grid layout
- [ ] UI Test Integration Points

### Documentation & Developer Experience

- [ ] DocC Documentation for public-facing components
- [ ] Demo integration in Swift Playground or Xcode Preview Scenes
- [ ] "Used In" Preview Scenarios for layout context

### Theming (Stretch Goals)

- [ ] Support for token overrides
- [ ] Custom font system plug-in

---

## License

MIT © [Cas Hoefman](https://github.com/cashoefman)
