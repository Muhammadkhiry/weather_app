import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/widgets/display_weather_info.dart';
import 'package:weather_app/widgets/no_weather_info.dart';
import 'package:weather_app/cubits/weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/weather_cubit/get_weather_states.dart';
import 'package:weather_app/views/search_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Weather updates",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return SearchView();
                  },
                ),
              );
            },
            icon: Padding(
              padding: EdgeInsetsGeometry.only(right: 7),
              child: Icon(Icons.search, color: Colors.white, size: 27),
            ),
          ),
        ],
      ),

      body: BlocBuilder<GetWeatherCubit, WeatherStates>(
        builder: (context, state) {
          if (state is WeatherInitialState) {
            return NoWeatherInfo();
          } else if (state is LoadedWeatherState) {
            return DisplayWeatherInfo(model: state.weatherModel);
          } else {
            return Center(
              child: Text(
                "There is an error",
                style: TextStyle(fontSize: 33, color: Colors.black),
              ),
            );
          }
        },
      ),
    );
  }
}
