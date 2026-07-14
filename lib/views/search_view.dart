import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  final TextEditingController _txtController = TextEditingController();
  SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Color(0xffFBA83F),
        title: Text(
          "Search a City",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Center(
          child: TextField(
            onSubmitted: (value) async {
             
              Navigator.pop(context);
            },
            controller: _txtController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter a city',
              hintText: 'Cairo',
              suffixIcon: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.search),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
