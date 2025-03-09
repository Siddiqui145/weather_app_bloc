import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_bloc/src/features/weather/data/implements/weather_data_provider.dart';
import 'package:weather_app_bloc/src/features/weather/domain/repositories/repositories.dart';
import 'package:weather_app_bloc/src/features/weather/presentation/bloc/weather_bloc.dart';
import 'package:weather_app_bloc/src/features/weather/presentation/pages/weather_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

//Here Repository would be passed and could be accessed by BLoC
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => WeatherRepository(WeatherDataProvider()),
      child: BlocProvider(
        create: (context) => WeatherBloc(
          context.read<WeatherRepository>()
        ),
        child: MaterialApp(
          theme: ThemeData.dark(
          ),
          home: const WeatherScreen(),
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}