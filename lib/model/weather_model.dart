class WeatherModel {
  final String cityName, updatedDate, condition, iconCondition;
  final int minTemp, avgTemp, maxTemp;

  WeatherModel({
    required this.cityName,
    required this.updatedDate,
    required this.condition,
    required this.iconCondition,
    required this.minTemp,
    required this.avgTemp,
    required this.maxTemp,
  });

  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      cityName: json["location"]["name"],
      updatedDate: json["current"]["last_updated"],
      condition: json["current"]["condition"]["text"],
      iconCondition: json["current"]["condition"]["icon"],
      minTemp: json["forecast"]["forecastday"][0]["day"]["mintemp_c"],
      avgTemp: json["forecast"]["forecastday"][0]["day"]["avgtemp_c"],
      maxTemp: json["forecast"]["forecastday"][0]["day"]["maxtemp_c"],
    );
  }
}
