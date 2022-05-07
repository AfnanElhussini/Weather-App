class WeatherModel {
  String? weatherStateName;
  String? date;
  double? temp;
  double? minTemp;
  double? maxTemp;

  WeatherModel({
    required this.weatherStateName,
    required this.temp,
    required this.date,
    required this.maxTemp,
    required this.minTemp,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> data) {
    return WeatherModel(
      weatherStateName: data['weather_state_name'],
      date: data['applicable_date'],
      maxTemp: data['max_temp'],
      minTemp: data['min_temp'],
      temp: data['the_temp'],
    );
  }
}
