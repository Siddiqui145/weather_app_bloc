class  WeatherModel {
      final double currentTemp;
      final String currentSky;
      final double currentPressure;
      final double currentWindSpeed;
      final double currentHumidity;

  WeatherModel({
    required this.currentTemp, required this.currentSky, required this.currentPressure, required this.currentWindSpeed, required this.currentHumidity});

        // ...
        // A model is a more generic term and can represent structured data used within an application. 
        // ...
        // fromJson
        // ...
        // toJson

        // final data = snapshot.data!;

        factory WeatherModel.fromMap(Map<String, dynamic> map) {
          final currentWeatherData = map['list'][0];

          return WeatherModel(
          currentTemp: currentWeatherData['main']['temp'], 
          currentSky: currentWeatherData['weather'][0]['main'], 
          currentPressure: currentWeatherData['main']['pressure'], 
          currentWindSpeed: currentWeatherData['wind']['speed'], 
          currentHumidity: currentWeatherData['main']['humidity']
          );
        }
}

    