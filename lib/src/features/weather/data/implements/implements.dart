
    import 'package:weather_app_bloc/src/features/weather/data/implements/weather_data_provider.dart';

import 'package:weather_app_bloc/src/features/weather/data/models/models.dart';

import '../sources/sources.dart';
    import '../../domain/repositories/repositories.dart';
    
    class WeatherRepositoryImp implements WeatherRepository{

        final WeatherRemoteDataSource remoteDataSource;
        WeatherRepositoryImp({required this.remoteDataSource});

  @override
  Future<WeatherModel> getCurrentWeather() {
    // TODO: implement getCurrentWeather
    throw UnimplementedError();
  }

  @override
  // TODO: implement weatherDataProvider
  WeatherDataProvider get weatherDataProvider => throw UnimplementedError();
      
        // ... example ...
        //
        // Future<User> getUser(String userId) async {
        //     return remoteDataSource.getUser(userId);
        //   }
        // ...
    }
    