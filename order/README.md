# orders_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

Here’s a clean **README.md** for your `orders_app` Flutter project, updated to include instructions for **mobile and web**, and clear steps for beginners:

---

```markdown
# orders app

A Flutter application that displays stock trading **open orders** in a clean, responsive tabular UI.

---

## **Project Structure**

```

orders\_app/
│── android/           # Android-specific files
│── ios/               # iOS-specific files
│── web/               # Web support
│── lib/
│   ├── main.dart       # App entry point
│   ├── models/
│   │   └── order.dart  # Order model (data class)
│   ├── screens/
│   │   └── orders\_page.dart  # Orders Page UI
│   ├── widgets/
│   │   ├── order\_table.dart  # Data table widget
│   │   ├── order\_row\.dart    # Single order row
│   │   └── top\_bar.dart      # Top info bar
│   ├── utils/
│   │   └── dummy\_data.dart   # Sample orders
│   └── theme/
│       └── app\_theme.dart    # Colors and TextStyles
│
├── pubspec.yaml       # Dependencies
└── README.md          # Project documentation

````

---

## **Features**

- View open orders in a scrollable table
- Columns: Client, Ticker, Side, Product, Qty, Price, Actions
- Top bar with stock indices (SIGNORIA, NIFTY BANK, etc.)
- Cancel all button (placeholder for future functionality)
- Responsive design for mobile, desktop, and web

---

## **Prerequisites**

- **Flutter SDK** installed: [Install Flutter](https://docs.flutter.dev/get-started/install)
- **Android Studio** for mobile emulators  
  - Make sure **Android SDK** and **Embedded JDK** are installed  
- Optional: Chrome browser for **Flutter Web**

---

## **Running the App**

### **1️⃣ Get dependencies**
```bash
flutter pub get
````

### **2️⃣ Run on Mobile**

1. Open Android Emulator or connect a physical device
2. Check devices:

```bash
flutter devices
```

3. Run:

```bash
flutter run
```

### **3️⃣ Run on Web**

1. Enable web support (if not done already):

```bash
flutter config --enable-web
```

2. Run in Chrome:

```bash
flutter run -d chrome
```

---

## **Hot Reload / Restart**

While the app is running:

* Press **`r`** → Hot reload (applies code changes instantly)
* Press **`R`** → Full restart

---

## **TODO / Future Improvements**

* Implement **Cancel All Orders** functionality
* Add **row-specific actions** for each order
* Connect with a **real API** for dynamic data
* Add **dark mode** support

---

## **License**

This project is for **educational/demo purposes**.

```

---

If you want, I can also make a **short “Getting Started for Beginners” version** that shows **exact commands to run on Windows + VS Code** so anyone can copy-paste and run the app immediately.  

Do you want me to do that?
```
