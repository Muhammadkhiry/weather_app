import 'package:weather_app/model/weather_model.dart';

class WeatherStates {}

class WeatherInitialState extends WeatherStates {}

class LoadedWeatherState extends WeatherStates {
  final WeatherModel weatherModel;

  LoadedWeatherState({required this.weatherModel});
}

class WeatherFailureState extends WeatherStates {}
