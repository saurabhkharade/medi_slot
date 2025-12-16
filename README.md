
# Doctor Booking App

A simple **Doctor Appointment Booking App** built using **Flutter**, following **MVVM architecture**, using **Hive** as the local database and **Provider** for state management. This app allows users to register, book appointments, and allows doctors to manage their schedules.

---

## Features

### User Module

* **User Registration Form**

    * Name
    * Email
    * Phone
    * Gender
    * Age
    * Password
    * User Type (Patient)

### Doctor Module

* **Doctor Registration Form**

    * Name
    * Email
    * Phone
    * Password
    * Specialization
    * Experience
    * Clinic Name
    * Clinic Address
    * Consultation Fee
    * User Type (Doctor)

### Appointment Module

* **Book Appointment Form**

    * Select Doctor
    * Select Date
    * Select Time Slot
    * Reason for Visit

### Slot Management Module (For Doctors)

* **Slot Management Form**

    * Select Day
    * Start Time
    * End Time

---

## Architecture

* **MVVM (Model-View-ViewModel)**

    * **Model:** Represents the data structure (User, Doctor, Appointment, Slot)
    * **View:** UI screens (Forms, Lists, Dashboards)
    * **ViewModel:** Handles business logic, data manipulation, and communicates between **View** and **Model**

* **State Management:** **Provider**

* **Local Database:** **Hive**

    * Stores user details, doctor profiles, appointments, and slot schedules

---

## Screens

1. **User Registration Screen**
2. **Doctor Registration Screen**
3. **Login Screen**
4. **Appointment Booking Screen**
5. **Doctor Slot Management Screen**
6. **Appointment List Screen** (for user and doctor view)

---

## Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  provider: ^6.0.5
  hive: ^2.2.3
  hive_flutter: ^1.1.0
  path_provider: ^2.0.15
```

---

## Getting Started

1. **Clone the repository**

```bash
git clone <repo-url>
```

2. **Install dependencies**

```bash
flutter pub get
```

3. **Initialize Hive** in `main.dart`

```dart
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  runApp(MyApp());
}
```

4. **Run the app**

```bash
flutter run
```

---

## Project Structure

```
lib/
├── models/          # Data models (User, Doctor, Appointment, Slot)
├── view/            # UI screens
├── viewmodel/       # Business logic
├── services/        # Hive database operations
├── utils/           # Helper functions and constants
├── main.dart        # App entry point
```

---

## Notes

* Only **MVVM architecture** is used.
* All data is stored **locally using Hive**.
* **Provider** manages state across the app.
* Supports both **Doctor** and **User (Patient)** workflows.

---

If you want, I can also create a **ready-to-use Markdown version** of this README with **tables for forms** and **screenshots placeholders** so it looks professional on GitHub.

Do you want me to do that?
