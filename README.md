# 🌦 Weather App  
A Flutter-based Weather App that utilizes **BLoC State Management** to efficiently handle API data fetching and display weather information with a clean UI.


## 📌 **Features**  
✅ **BLoC for State Management** – The app is structured around the **BLoC pattern** for scalable and maintainable state handling.  
✅ **Real-time Weather Forecast** – Fetches and displays current and hourly weather forecasts using the **OpenWeather API**.  
✅ **Efficient API Handling** – Uses a dedicated `WeatherRepository` and `WeatherDataProvider` to manage data fetching separately.  
✅ **UI Components** – Displays temperature, humidity, wind speed, and hourly forecast in a **responsive and clean UI**.  
✅ **Error Handling & Loading States** – Properly handles API errors and displays a loading indicator while fetching data.  
✅ **Refresh Mechanism** – Users can refresh the data with a button tap.  

## 📜 **Important Regulations for BLoC & API Handling**
✔ **State Management:** All data processing should be handled inside the **BLoC** and not in the UI.  
✔ **Separation of Concerns:** Keep **API fetching** in `WeatherDataProvider`, **data parsing** in `WeatherModel`, and **state changes** in `WeatherBloc`.  
✔ **Immutable States:** Always define BLoC states as immutable using the `@immutable` annotation.  
✔ **Efficient UI Rendering:** Use `BlocBuilder` for state updates, and **avoid unnecessary widget rebuilds**.  
✔ **Error Handling:** Always catch API failures in `WeatherBloc` and display a proper error message to users.  
✔ **API Security:** Store API keys in `secrets.dart` (not in source control).  

---

## 🎨 **Demo**

https://github.com/user-attachments/assets/ed547d04-7a86-4826-9189-12af43afd446

---

## 🏛 **Project Architecture**  

The app follows a **clean architecture** approach:  

```
📂 lib/src/features/weather  
├── 📂 data  
│   ├── models/  # Data Models  
│   ├── sources/ # API Providers  
│   ├── repositories/ # Abstraction & API Calls  
│  
├── 📂 domain  
│   ├── repositories/ # Repository Contracts  
│  
├── 📂 presentation  
│   ├── 📂 bloc/  # BLoC Logic  
│   ├── 📂 screens/  # UI Screens  
│   ├── 📂 widgets/  # Reusable Components  
```

---

## ⚙️ **Installation & Setup**  

1️⃣ Clone the repository:  
```sh
git clone https://github.com/Siddiqui145/weather_app_bloc.git
cd weather_app_bloc
```

2️⃣ Install dependencies:  
```sh
flutter pub get
```

3️⃣ Set up API Key:  
- Open `lib/src/features/weather/data/sources/secrets.dart`
- Add your **OpenWeather API Key**:  
```dart
const String openWeatherAPIKey = "YOUR_API_KEY";
```

4️⃣ Run the app:  
```sh
flutter run
```

## 🚀 **Conclusion**
This **Weather App** demonstrates a **clean and efficient use of BLoC state management** in Flutter for handling API data, UI updates, and error handling. Follow the best practices listed above for scalable and maintainable Flutter applications.


## 📌 **Contributions & License**
Contributions are welcome!  
This project is open-source and available under the **MIT License**.
