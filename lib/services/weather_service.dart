import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  final dio = Dio();
  static const String _baseURL = "https://api.weatherapi.com/v1";
  static const String _apiKey = "daa969ee4c1a465d888122354251309";
  Future<WeatherModel> getData({required String cityName}) async {
    try {
      final Response response = await dio.get(
        "$_baseURL/forecast.json",
        queryParameters: {"key": _apiKey, "q": cityName, "days": 1},
      );

      if (response.statusCode == 200) {
        final WeatherModel model = WeatherModel.fromJson(response.data);
        return model;
      } else {
        throw Exception('Failed to load users');
      }
    } on DioException catch (e) {
      throw Exception('Dio error: ${e.message}');
    }
  }
}
