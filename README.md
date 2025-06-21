Got it! Since you **don’t want to include screenshots**, I’ve cleaned up the `README.md` for you by **removing the screenshot section** and polishing the rest.

---

### ✅ Final `README.md` (no screenshots):

```markdown
# 🎬 Clean Architecture Movie App

A Flutter Movie App built using **Clean Architecture**, **BLoC**, and **TheMovieDB API**. This app is designed for scalability, testability, and clean separation of concerns.

---

## ✨ Features

- 🎞️ List Now Playing, Popular, and Top Rated Movies
- 📃 View Movie Details
- 🔍 Search for Movies
- 🧱 Clean Architecture: Data, Domain, Presentation layers
- ⚙️ Uses Dio for networking and BLoC for state management

---

## 🧠 Architecture

This project follows the **Clean Architecture** principle with a clear separation between:

- **Data Layer**: DTOs, Repositories, Data Sources
- **Domain Layer**: Entities, Use Cases, Repositories (abstract)
- **Presentation Layer**: Controllers (BLoC/Cubit), Views, Widgets

### 📁 Folder Structure

```

lib/
├── core/
│   ├── err/             # Error handling
│   ├── networks/        # API setup, interceptors
│   ├── services/        # General services (e.g., helpers)
│   ├── usecases/        # Shared base use cases (optional)
│   └── utils/           # Constants, enums, formatters
├── features/
│   └── movie/
│       ├── data/
│       │   ├── datasource/
│       │   ├── models/
│       │   └── repository/
│       ├── domain/
│       │   ├── entities/
│       │   ├── repository/
│       │   └── usecases/
│       └── presentation/
│           ├── controller/   # Cubit/BLoC classes
│           ├── views/        # Screens
│           └── widgets/      # Reusable UI widgets
├── main.dart

````

---

## 🚀 Getting Started

### 🔧 Prerequisites

- Flutter SDK `>=3.8.1`
- Dart SDK `>=3.0.0`
- API key from [TheMovieDB](https://www.themoviedb.org/)

### 📦 Installation

1. **Clone the repo:**

```bash
git clone https://github.com/yourusername/clean_arch_movie_app.git
cd clean_arch_movie_app
````

2. **Install dependencies:**

```bash
flutter pub get
```

3. **Set up your API key:**

Create `lib/core/networks/api_constants.dart`:

```dart
class ApiConstants {
  static const String baseUrl = 'https://api.themoviedb.org/3';
  static const String apiKey = 'YOUR_API_KEY_HERE';
}
```

4. **Run the app:**

```bash
flutter run
```

---

## 🧰 Dependencies

| Package                | Description                     |
| ---------------------- | ------------------------------- |
| flutter\_bloc          | State management                |
| dartz                  | Functional programming (Either) |
| dio                    | HTTP client                     |
| get\_it                | Dependency injection            |
| equatable              | Value equality                  |
| cached\_network\_image | Image caching                   |
| carousel\_slider       | Movie carousels                 |
| shimmer                | Skeleton loaders                |
| animate\_do            | Animations                      |
| google\_fonts          | Custom fonts                    |

---

## 🧪 Testing

```bash
flutter test
```

---

## 📜 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## 👨‍💻 Author

**Your Name**
[GitHub](https://github.com/yourusername)

---

## 🙋‍♂️ Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

```

---

Would you like me to:
- Save this as a downloadable `README.md` file?
- Fill in your real name and GitHub info?
- Add optional setup like `.env` support for hiding the API key?

Let me know, and I’ll get it ready instantly.
```
