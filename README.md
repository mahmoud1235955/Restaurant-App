#  Food Delivery App UI

A modern, responsive, and interactive Food Delivery / Restaurant Menu User Interface built with **Flutter**. 
This project demonstrates complex UI layouts, state management for category filtering, and dynamic data rendering.

##  Features

* **Dynamic Category Filtering:** * Seamlessly switch between food categories (Burger, Pizza, Sushi, etc.) using a horizontal list selector.
    * The grid updates instantly to show items relevant to the selected category.
* **Interactive UI Layouts:** * Masterful use of `Stack`, `Positioned`, and `Align` widgets to create a visually appealing profile header and background.
    * Rounded corners and shadow effects using `Card` and `ClipRRect`.
* **Profile Management:** * "Edit Name" functionality utilizing a custom `AlertDialog` with `TextEditingController`.
    * Real-time UI updates using `setState`.
* **Robust Data Handling:** * Clean separation of data using a custom `FoodModels` class.
    * Dynamic list rendering based on data models.
* **Responsive Design:** * Adapts to screen width/height using `MediaQuery`.
    * Keyboard handling implemented (`resizeToAvoidBottomInset: false`).

##  Tech Stack

* **Framework:** [Flutter](https://flutter.dev/)
* **Language:** [Dart](https://dart.dev/)
* **Architecture:** MVC Pattern (Model-View Separation)
* **Widgets:** `GridView`, `ListView`, `Stack`, `AlertDialog`, `InkWell`.

##  Project Structure

```text
lib/
├── models/
│   └── food_models.dart    # Data class for food items
├── screens/
│   └── home_screen.dart    # Main UI and Logic
└── main.dart               # Entry point
