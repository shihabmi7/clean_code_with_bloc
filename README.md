# 📝 Clean Note App (Flutter)

A modular and scalable Note Taking application built with **Flutter**, using:

- ✅ **BLoC** for state management
- ✅ **GoRouter (Navigator 2.0)** for declarative routing
- ✅ **Clean Architecture** principles
- ✅ **MVVM** design pattern
- ✅ **In-memory repository** (easily swappable with SQLite or Hive)

---

## 📦 Features

- View all saved notes
- Add new notes
- Responsive UI with AppBar and improved list styling
- Clean navigation using `go_router`
- Modular, testable code structure

---

## 📁 Project Structure

```
lib/
├── main.dart                          # App entry point and setup
├── routes/
│   └── app_router.dart                # All app routes (GoRouter)
├── application/
│   ├── blocs/
│   │   └── note_bloc.dart             # Events, States, Bloc logic
│   └── di/
│       └── bloc_providers.dart        # List of Bloc providers
├── domain/
│   └── repository/
│       └── note_repository.dart       # In-memory repository logic
├── data/
│   └── models/
│       └── note_model.dart            # Note model class
├── presentation/
│   └── pages/
│       ├── note_list_page.dart        # Notes listing UI
│       └── add_note_page.dart         # Note creation UI
```

---

## 🚀 Getting Started

### 1. Clone the Repository
```bash
git clone https://github.com/your-username/clean_note_app.git
cd clean_note_app
```

### 2. Install Dependencies
```bash
flutter pub get
```

### 3. Run the App
```bash
flutter run
```

---

## 🧠 Tech Stack

| Layer        | Technology               |
|--------------|---------------------------|
| State Mgmt   | flutter_bloc              |
| Routing      | go_router (Navigator 2.0) |
| Architecture | Clean + MVVM              |
| UI Toolkit   | Flutter + Material        |

---

## 🔄 Future Improvements

- [ ] Add editing/deleting notes
- [ ] Add persistent local storage (SQLite or Hive)
- [ ] Add light/dark theme switching
- [ ] Search/filter notes

## GITHUB CI/CD ADDED

---

## 👨‍💻 Maintainer

**Shihab Uddin**  
Mobile Application Developer | Android + Flutter + Backend

📫 Connect on [LinkedIn](https://www.linkedin.com/in/shihabuddin-dev/)

---

## 📄 License

This project is licensed under the MIT License © 2025 Shihab Uddin
