import 'package:flutter/material.dart';
import 'package:sih_app/homepage.dart';
import 'package:sih_app/flood.dart';
import 'cyclone.dart';
import 'earthquake.dart';
import 'landslide.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: "/", routes: {
      "/": (context) => MyHomePage(),
      "/2nd": (context) => Flood(),
      "/3rd": (context) => Earthquake(),
      "/4th": (context) => Cyclone(),
      "/5th": (context) => Landslide(),
    });
  }
}
