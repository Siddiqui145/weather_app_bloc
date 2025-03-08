import 'package:http/http.dart' as http;
import 'package:weather_app_bloc/src/features/weather/data/sources/secrets.dart';

//This just gets the raw data as a String format hence no formattig or converting is done here

class WeatherDataProvider {
Future<String> getCurrentWeather(String cityName) async {
    try {
      
      final res = await http.get(
        Uri.parse(
          'https://api.openweathermap.org/data/2.5/forecast?q=$cityName&APPID=$openWeatherAPIKey',
        ),
      );


      return res.body;
    } catch (e) {
      throw e.toString();
    }
  }
}
