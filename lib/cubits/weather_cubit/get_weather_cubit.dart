import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/weather_cubit/get_weather_states.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

class GetWeatherCubit extends Cubit<WeatherStates> {
  GetWeatherCubit() : super(WeatherInitialState());
  WeatherModel? model;
  Future<void> getWeatherResponse({required String cityName}) async {
    try {
      // ignore: unused_local_variable
      model = await WeatherService().getData(cityName: cityName);

      emit(LoadedWeatherState(weatherModel: model!));
    } catch (e) {
      emit(WeatherFailureState());
    }
  }
}
