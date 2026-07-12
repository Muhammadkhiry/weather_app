import 'package:flutter/material.dart';
import 'package:weather_app/components/no_weather_info.dart';
import 'package:weather_app/views/search_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff2092EF),
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

      body: NoWeatherInfo(),
    );
  }
}
