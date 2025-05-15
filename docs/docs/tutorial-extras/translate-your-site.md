---
sidebar_position: 4
---
# Creating Swift Apps in Multiple Languages with Fresco

Building your SwiftUI app for a global audience often means supporting multiple languages. Fortunately, Swift and SwiftUI make localization straightforward, enabling you to reach more users worldwide.

## Why Localization Matters

Localization enhances user experience by presenting your app clearly in your users' native languages. This helps to increase engagement, improve accessibility, and potentially expand your market reach.

## Getting Started with Localization in SwiftUI

SwiftUI simplifies localization. Here's a quick guide:

1. **Use Localizable Strings**
   Replace hardcoded text with localized strings:

   ```swift
   Text("welcome_message")
   ```

2. **Create Localizable.strings files**
   In your Xcode project:

   * Select **File → New → File → Strings File**, and name it `Localizable.strings`.
   * Add languages by selecting your file, clicking **"Localize..."**, and picking the languages you want to support.

3. **Provide Translations**
   Add translated strings clearly to each `Localizable.strings` file:

   ```strings
   // en.lproj/Localizable.strings
   "welcome_message" = "Welcome to Fresco!";

   // fr.lproj/Localizable.strings
   "welcome_message" = "Bienvenue chez Fresco!";
   ```

Your SwiftUI app automatically displays the correct language based on the user's device settings.

## Test Your Localized App

Always test localization using Xcode's built-in preview and Simulator:

```swift
Text("welcome_message")
    .environment(\.locale, .init(identifier: "fr"))
```

Localization is simple yet powerful. Start reaching global users today!
