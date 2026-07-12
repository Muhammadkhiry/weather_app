import 'package:flutter/material.dart';

class DisplayWeatherInfo extends StatelessWidget {
  const DisplayWeatherInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(35.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Alexandria",
            style: TextStyle(
              color: Colors.black,
              fontSize: 33,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "updated a : 23:46",
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
          SizedBox(height: 55),

          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/rainy.png"),
              Text(
                "17",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 33,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                children: [
                  Text(
                    "maxTemp: 17",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  Text(
                    "minTemp: 10",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 51),
          Text(
            "Light Rain",
            style: TextStyle(
              color: Colors.black,
              fontSize: 33,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
