import 'package:flutter/material.dart';
import 'package:weather_app/widgets/display_condition_icon.dart';
import 'package:weather_app/main.dart';
import 'package:weather_app/models/weather_model.dart';

class DisplayWeatherInfo extends StatelessWidget {
  const DisplayWeatherInfo({super.key, required this.model});
  final WeatherModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            getThemeColor(condition: model.condition).shade900,
            getThemeColor(condition: model.condition).shade50,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              model.cityName,
              style: TextStyle(
                color: Colors.black,
                fontSize: 33,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "last update: ${model.updatedDate.hour}:${model.updatedDate.minute}",
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
            SizedBox(height: 55),

            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                DisplayConditionIcon(condition: model.condition),
                // OR
                // Image.network(model.iconCondition),
                Text(
                  "${model.avgTemp}",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 33,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "${model.maxTemp}",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                    Text(
                      "${model.minTemp}",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 51),
            Text(
              model.condition,
              style: TextStyle(
                color: Colors.black,
                fontSize: 33,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
