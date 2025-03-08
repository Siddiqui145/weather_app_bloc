
  import 'package:flutter_bloc/flutter_bloc.dart';
  import 'package:meta/meta.dart';
import 'package:weather_app_bloc/src/features/weather/data/models/models.dart';
import 'package:weather_app_bloc/src/features/weather/domain/repositories/repositories.dart';
  
  part 'weather_event.dart';
  part 'weather_state.dart';
  
  // Repo & this Bloc would connect and handle everything
  class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
    final WeatherRepository weatherRepository;
    WeatherBloc(this.weatherRepository) : super(WeatherInitial()) {
      on<WeatherFetched>((_getCurrentWeather));
    }
    void _getCurrentWeather(WeatherFetched event, Emitter<WeatherState> emit,) async {
      emit (WeatherLoading());
      try {
        final weather = await weatherRepository.getCurrentWeather();
        emit(WeatherSuccess(weatherModel: weather));
      }
      catch (e) {
        emit(WeatherFailure(e.toString()));
      }
    }
  }
