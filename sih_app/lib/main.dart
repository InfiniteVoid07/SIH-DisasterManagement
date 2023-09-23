import 'package:flutter/material.dart';
import 'package:sih_app/homepage.dart';
import 'package:sih_app/flood.dart';
import 'package:sih_app/tornado.dart';
import 'package:sih_app/cyclone.dart';
import 'package:sih_app/earthquake.dart';
import 'package:sih_app/landslide.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: "/", routes: {
      "/": (context) => const MyHomePage(),
      "/2nd": (context) => Flood(),
      "/3rd": (context) => Earthquake(),
      "/4th": (context) => const Cyclone(),
      "/5th": (context) => const Landslide(),
      "/6th": (context) => const Tornado(),
    });
  }
}
