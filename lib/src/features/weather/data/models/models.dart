class WeatherModel {
  final double currentTemp;
  final String currentSky;
  final int currentPressure;
  final double currentWindSpeed;
  final int currentHumidity;
  final List<HourlyForecast> hourlyForecasts;

  WeatherModel({
    required this.currentTemp,
    required this.currentSky,
    required this.currentPressure,
    required this.currentWindSpeed,
    required this.currentHumidity,
    required this.hourlyForecasts,
  });

  factory WeatherModel.fromMap(Map<String, dynamic> map) {
    final currentWeatherData = map['list'][0];

    List<HourlyForecast> forecasts = []; 
    for (int i = 1; i <= 20; i++) { //Number of forecasts in hourly we need
      final hourlyData = map['list'][i];
      forecasts.add(HourlyForecast.fromMap(hourlyData));
    }

    return WeatherModel(
      currentTemp: (currentWeatherData['main']['temp'] as num).toDouble(),
      currentSky: currentWeatherData['weather'][0]['main'],
      currentPressure: currentWeatherData['main']['pressure'],
      currentWindSpeed: (currentWeatherData['wind']['speed'] as num).toDouble(),
      currentHumidity: currentWeatherData['main']['humidity'],
      hourlyForecasts: forecasts,
    );
  }
}

class HourlyForecast { //Created a separate for handling nested hourly forecasts data
  final String hourlySky;
  final DateTime time;
  final double temp;

  HourlyForecast({
    required this.hourlySky,
    required this.time,
    required this.temp,
  });

  factory HourlyForecast.fromMap(Map<String, dynamic> map) {
    return HourlyForecast(
      hourlySky: map['weather'][0]['main'],
      time: DateTime.parse(map['dt_txt']),
      temp: (map['main']['temp'] as num).toDouble(),
    );
  }
}
