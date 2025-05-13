# Fresco

**Fresco** is a modular Swift Package that defines a reusable design system for SwiftUI applications. Inspired by the art of mural painting, it provides a clean, scalable foundation for typography, color, layout spacing, and UI components across projects.

---

## Features

* Unified color palette and typography
* Spacing constants for consistent layout
* Reusable SwiftUI components (`PrimaryButton`, `StyledTextField`, etc.)
* Extendable for additional design tokens and elements
* Built to work with MVVM or MVVM+C architecture

---

## Folder Structure

```
Fresco/
├── Sources/
│   └── Fresco/
│       ├── Colors.swift                 # Central color definitions
│       ├── Fonts.swift                  # App-wide font styles
│       ├── Spacing.swift                # Layout and spacing constants
│       ├── Components/
│       │   ├── PrimaryButton.swift      # Styled SwiftUI Button
│       │   └── StyledTextField.swift    # Consistent TextField component
│       └── Helpers/
│           └── ViewModifiers.swift      # Reusable view modifiers
├── Resources/
│   └── Assets.xcassets                  # Optional assets (e.g., icons, colors)
└── Package.swift                        # Swift Package manifest
```

---

## Getting Started

### Add to Your App

1. In Xcode, open your app project.
2. Go to `File > Add Packages...`
3. Select `Add Local...` and choose the `Fresco` package folder.
4. Import the design system in your Swift files:

```swift
import Fresco
```

### Example Usage

```swift
Text("Welcome to Muralists")
    .font(AppFonts.subtitle)
    .foregroundColor(AppColors.primary)
    .padding(AppSpacing.large)

PrimaryButton(title: "Get Started") {
    // Action
}
```

---

## Customization

You can extend the system by:

* Adding new components in `Sources/Fresco/Components`
* Expanding the color or font sets
* Creating view modifiers in the `Helpers` folder

---

## License

This package is open for reuse and customization within your apps. Attribution is optional but appreciated.

---

## About the Name

“**Fresco**” refers to a traditional mural technique where pigments are applied to freshly laid plaster — a perfect metaphor for laying down the foundation of your app’s visual identity.

