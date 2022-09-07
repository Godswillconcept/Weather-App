// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use, prefer_typing_uninitialized_variables, unnecessary_null_comparison

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import 'package:second_trial/services/locator.dart';
import '../model/weather_data.dart';

class Weather extends StatefulWidget {
  const Weather({Key? key}) : super(key: key);

  @override
  State<Weather> createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  WeatherData? weatherData;
  late Position currentPosition;
  final searchController = TextEditingController();
  Future getWeatherByLocation() async {
    Response response;
    var dio = Dio();
    String location = searchController.text;
    debugPrint('inputTest location => $location');
    if (location.isNotEmpty) {
      try {
        response = await dio.get(
          'https://api.openweathermap.org/data/2.5/weather',
          queryParameters: {
            'q': location,
            'units': 'metric',
            'APPID': '0089b4971f7ebb1d030ec3058e8b677a',
          },
        );

        setState(() {
          weatherData = WeatherData.fromJson(response.data);
        });
      } catch (e) {
        debugPrint('$e');
      }
    }
  }

  Future<WeatherData> getWeather(num lat, num lon) async {
    Response response;
    var dio = Dio();

    response = await dio.get(
      'https://api.openweathermap.org/data/2.5/weather',
      queryParameters: {
        'lat': lat,
        'lon': lon,
        'units': 'metric',
        'APPID': '0089b4971f7ebb1d030ec3058e8b677a',
      },
    );
    return WeatherData.fromJson(response.data);
  }

  @override
  void initState() {
    super.initState();
    determinePosition().then((Position position) {
      var lat = position.latitude;
      var lon = position.longitude;
      getWeather(lat, lon).then((weather) {
        setState(() {
          weatherData = weather;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 213, 214, 235),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width,
            color: Color(0xff141546),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        weatherData?.name ?? 'null',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        DateFormat().add_MMMMEEEEd().format(DateTime.now()),
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: weatherData?.icon != null
                                ? Image.network((weatherData!.icon).toString())
                                : Image.asset('images/night.png'),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              weatherData?.main!.tempMin != null
                                  ? 'min : ${(weatherData!.main!.tempMin)!.toStringAsFixed(2)}\u00B0 /'
                                  : 'Loading /',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              weatherData?.main!.tempMax != null
                                  ? ' max: ${(weatherData!.main!.tempMax)!.toStringAsFixed(2)}\u00B0'
                                  : ' Loading',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          weatherData?.main!.temp != null
                              ? '${(weatherData!.main!.temp)!.ceil()}\u00B0'
                              : 'Loading',
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            weatherData?.realWeather.description ?? 'null',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              children: [
                TextFormField(
                  onEditingComplete: () => getWeatherByLocation(),
                  controller: searchController,
                  textInputAction: TextInputAction.search,
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    suffixIcon: Icon(
                      Icons.search,
                      color: Color(0xff141546),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Color(0xff141546),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Color(0xff141546),
                      ),
                    ),
                  ),
                ),
                ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.thermometerHalf,
                    color: Colors.red,
                  ),
                  title: Text('Temperature'),
                  trailing: Text(weatherData?.main!.temp! != null
                      ? '${(weatherData!.main!.temp!).ceil()}\u00B0'
                      : "Loading"),
                ),
                ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.cloud,
                    color: Colors.purpleAccent,
                  ),
                  title: Text('Weather'),
                  trailing:
                      Text((weatherData?.realWeather.description).toString()),
                ),
                ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.sun,
                    color: Colors.amber,
                  ),
                  title: Text('Humidity'),
                  trailing: Text(weatherData?.main!.humidity! != null
                      ? '${weatherData!.main!.humidity!}%'
                      : 'Loading'),
                ),
                ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.wind,
                    color: Colors.blueAccent,
                  ),
                  title: Text('Wind speed'),
                  trailing: Text(weatherData?.wind!.speed! != null
                      ? '${weatherData!.wind!.speed!}m/s'
                      : 'Loading'),
                ),
                ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.cloudRain,
                    color: Colors.brown,
                  ),
                  title: Text('Cloud'),
                  trailing: Text(weatherData?.clouds!.all! != null
                      ? '${weatherData!.clouds!.all!}%'
                      : 'Loading'),
                ),
                ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.gaugeHigh,
                  ),
                  title: Text('Cloud'),
                  trailing: Text(weatherData?.main!.pressure! != null
                      ? '${weatherData!.main!.pressure!}hPa'
                      : 'Loading'),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
