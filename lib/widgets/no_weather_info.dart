import 'package:flutter/material.dart';

class NoWeatherInfo extends StatelessWidget {
  const NoWeatherInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "There is no weather data yet",
              style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
            ),
            Text(
              "Start searching",
              style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
