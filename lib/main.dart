import 'package:flutter/material.dart';
import 'package:weather_app_bloc/src/features/weather/presentation/pages/weather_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
      ),
      home: const WeatherScreen()
    );
  }
}