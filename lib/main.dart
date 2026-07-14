import 'package:flutter/material.dart';
import 'package:weather_app/cubits/weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/weather_cubit/get_weather_states.dart';
import 'package:weather_app/views/home_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: Builder(
        builder: (context) => BlocBuilder<GetWeatherCubit, WeatherStates>(
          builder: (context, state) {
            return MaterialApp(
              theme: ThemeData(
                useMaterial3: false,
                primarySwatch: getThemeColor(
                  condition: BlocProvider.of<GetWeatherCubit>(
                    context,
                  ).model?.condition,
                ),
              ),
              debugShowCheckedModeBanner: false,
              home: HomeView(),
            );
          },
        ),
      ),
    );
  }
}

MaterialColor getThemeColor({required String? condition}) {
  switch (condition) {
    // ☀️ Clear
    case "Sunny":
      return Colors.amber;

    case "Clear":
      return Colors.orange;

    // ⛅ Clouds
    case "Partly cloudy":
      return Colors.lightBlue;

    case "Cloudy":
      return Colors.blueGrey;

    case "Overcast":
      return Colors.grey;

    // 🌫 Fog / Haze / Dust
    case "Mist":
    case "Fog":
      return Colors.grey;

    case "Freezing fog":
      return Colors.blueGrey;

    case "Haze":
      return Colors.orange;

    case "Dust haze":
    case "Blowing dust":
    case "Dust":
      return Colors.brown;

    case "Dust storm":
    case "Sandstorm":
    case "Severe sandstorm":
      return Colors.deepOrange;

    case "Smoke":
    case "Smoky haze":
    case "Smog":
    case "Severe smog":
      return Colors.blueGrey;

    case "Saharan dust":
      return Colors.orange;

    // 🌦 Light Rain
    case "Patchy rain possible":
    case "Patchy light drizzle":
    case "Light drizzle":
    case "Patchy light rain":
    case "Light rain":
    case "Light rain shower":
      return Colors.lightBlue;

    // 🌧 Moderate Rain
    case "Moderate rain at times":
    case "Moderate rain":
    case "Moderate or heavy rain shower":
      return Colors.blue;

    // 🌧 Heavy Rain
    case "Heavy rain at times":
    case "Heavy rain":
    case "Torrential rain shower":
      return Colors.indigo;

    // 🧊 Freezing Rain
    case "Patchy freezing drizzle possible":
    case "Freezing drizzle":
    case "Heavy freezing drizzle":
    case "Light freezing rain":
    case "Moderate or heavy freezing rain":
      return Colors.cyan;

    // 🌨 Sleet
    case "Light sleet":
    case "Moderate or heavy sleet":
    case "Light sleet showers":
    case "Moderate or heavy sleet showers":
      return Colors.teal;

    // ❄️ Snow
    case "Patchy snow possible":
    case "Patchy light snow":
    case "Light snow":
      return Colors.lightBlue;

    case "Patchy moderate snow":
    case "Moderate snow":
      return Colors.cyan;

    case "Patchy heavy snow":
    case "Heavy snow":
      return Colors.indigo;

    case "Blowing snow":
      return Colors.blueGrey;

    case "Blizzard":
      return Colors.blue;

    case "Light snow showers":
    case "Moderate or heavy snow showers":
      return Colors.teal;

    // 🧊 Ice
    case "Ice pellets":
    case "Light showers of ice pellets":
    case "Moderate or heavy showers of ice pellets":
      return Colors.cyan;

    // ⛈ Thunder
    case "Thundery outbreaks possible":
      return Colors.deepPurple;

    case "Patchy light rain with thunder":
      return Colors.deepPurple;

    case "Moderate or heavy rain with thunder":
      return Colors.deepPurple;

    case "Patchy light snow with thunder":
    case "Moderate or heavy snow with thunder":
      return Colors.purple;

    case null:
    default:
      return Colors.blue;
  }
}
