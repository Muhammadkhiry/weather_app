import 'package:bloc/bloc.dart';
import 'package:weather_app/cubits/weather_cubit/get_weather_states.dart';

class GetWeatherCubit extends Cubit<GetWeatherStates> {
  GetWeatherCubit() : super(NoWeatherState());

  void loadedWeatherState() {
    emit(LoadedWeatherState());
  }

  void failedLoadingState() {
    emit(FailedLoadingState());
  }
}
