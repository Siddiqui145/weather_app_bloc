
    import '../sources/sources.dart';
    import '../../domain/repositories/repositories.dart';
    
    class WeatherRepositoryImp implements WeatherRepository{

        final WeatherRemoteDataSource remoteDataSource;
        WeatherRepositoryImp({required this.remoteDataSource});
      
        // ... example ...
        //
        // Future<User> getUser(String userId) async {
        //     return remoteDataSource.getUser(userId);
        //   }
        // ...
    }
    