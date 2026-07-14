import 'package:flutter/material.dart';

class DisplayConditionIcon extends StatelessWidget {
  const DisplayConditionIcon({super.key, required this.condition});

  final String condition;

  @override
  Widget build(BuildContext context) {
    switch (condition) {
      // ---------------- Clear ----------------
      case "Sunny":
      case "Clear":
        return Image.asset("assets/images/clear.png");

      // ---------------- Cloudy ----------------
      case "Partly cloudy":
      case "Cloudy":
      case "Overcast":
      case "Mist":
      case "Fog":
      case "Freezing fog":
      case "Haze":
      case "Dust haze":
      case "Blowing dust":
      case "Dust":
      case "Dust storm":
      case "Sandstorm":
      case "Severe sandstorm":
      case "Smoke":
      case "Smoky haze":
      case "Smog":
      case "Severe smog":
      case "Saharan dust":
        return Image.asset("assets/images/cloudy.png");

      // ---------------- Rain ----------------
      case "Patchy rain possible":
      case "Patchy freezing drizzle possible":
      case "Patchy light drizzle":
      case "Light drizzle":
      case "Freezing drizzle":
      case "Heavy freezing drizzle":
      case "Patchy light rain":
      case "Light rain":
      case "Moderate rain at times":
      case "Moderate rain":
      case "Heavy rain at times":
      case "Heavy rain":
      case "Light freezing rain":
      case "Moderate or heavy freezing rain":
      case "Light rain shower":
      case "Moderate or heavy rain shower":
      case "Torrential rain shower":
      case "Light sleet":
      case "Moderate or heavy sleet":
      case "Light sleet showers":
      case "Moderate or heavy sleet showers":
        return Image.asset("assets/images/rainy.png");

      // ---------------- Snow ----------------
      case "Patchy snow possible":
      case "Blowing snow":
      case "Blizzard":
      case "Patchy light snow":
      case "Light snow":
      case "Patchy moderate snow":
      case "Moderate snow":
      case "Patchy heavy snow":
      case "Heavy snow":
      case "Light snow showers":
      case "Moderate or heavy snow showers":
      case "Ice pellets":
      case "Light showers of ice pellets":
      case "Moderate or heavy showers of ice pellets":
        return Image.asset("assets/images/snow.png");

      // ---------------- Thunder ----------------
      case "Thundery outbreaks possible":
      case "Patchy light rain with thunder":
      case "Moderate or heavy rain with thunder":
      case "Patchy light snow with thunder":
      case "Moderate or heavy snow with thunder":
        return Image.asset("assets/images/thunderstorm.png");

      // ---------------- Default ----------------
      default:
        return Image.asset("assets/images/cloudy.png");
    }
  }
}
