# EmotionColorApp

**EmotionColorApp** is a Flutter application that demonstrates the use of state management with `provider` to reflect and track user emotions. Users can press buttons representing different emotions (Happy, Sad, Neutral, Angry, Worried), and the UI updates in real-time to display the selected emotion's color, emoji, and counter.

---

## Features

- Five emotion buttons with unique color themes.
- Real-time background color changes based on selected emotion.
- Emoji updates and a string label for each emotion.
- Individual counters for how many times each emotion has been selected.
- State management via the `provider` package.

---

## Screenshots

| Emotion Example | Color  | Emoji |
| --------------- | ------ | ----- |
| Happy           | Yellow | 🙂    |
| Sad             | Blue   | 🙁    |
| Neutral         | Grey   | 😐    |
| Angry           | Red    | 😠    |
| Worried         | Purple | 😟    |

---

## Project Structure

```
lib/
├── main.dart                        # Main application UI
├── providers/
│   └── providers.dart              # Contains all ChangeNotifier provider classes
```

---

## Getting Started

1. **Clone this repo**:

   ```bash
   git clone <repo-url>
   cd emotion_color_app
   ```

2. **Install dependencies**:

   ```bash
   flutter pub get
   ```

3. **Run the app**:

   ```bash
   flutter run
   ```

---

## Dependencies

- `flutter`
- `provider`

---

## File Details

### `providers.dart`

Defines `ChangeNotifier` classes for each emotion, managing state updates and UI notification logic.

### `main.dart`

Builds the UI using a `MultiProvider` structure, with buttons, emoji display, and emotion count indicators.

---

## License

This project is for educational purposes. You are free to use and modify it.

