import 'dart:convert';

import 'package:weather_app_bloc/src/features/weather/data/implements/weather_data_provider.dart';
import 'package:weather_app_bloc/src/features/weather/data/models/models.dart';

class WeatherRepository {
  final WeatherDataProvider weatherDataProvider;

  WeatherRepository(
    this.weatherDataProvider
    );

  Future<WeatherModel> getCurrentWeather() async {
    try {
      String cityName = 'London';
      final weatherData = await weatherDataProvider.getCurrentWeather(cityName);

      final data = jsonDecode(weatherData);

      if (data['cod'] != '200') {
        throw 'An unexpected error occurred';
      }

      return WeatherModel.fromMap(data);
    } catch (e) {
      throw e.toString();
    }
  }
}
