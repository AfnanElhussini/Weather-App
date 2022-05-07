import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

class Searching extends StatefulWidget {
  Searching({Key? key}) : super(key: key);

  @override
  State<Searching> createState() => _SearchingState();
}

class _SearchingState extends State<Searching> {
  String? cityName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search A City'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            onSubmitted: (data) async {
              cityName = data;

              WeatherServices service = WeatherServices();
              WeatherModel weather =
                  await service.getWeather(cityName: cityName!);
              print(weather.temp);
            },
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 32, horizontal: 24),
              label: Text('Search'),
              suffix: Icon(Icons.search),
              border: OutlineInputBorder(),
              hintText: 'Enter City Name',
            ),
          ),
        ),
      ),
    );
  }
}
