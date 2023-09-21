import 'package:flutter/material.dart';
import 'components.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'D-App',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
            ),
            // Earthquake card
            Disaster(
                photo: AssetImage("Images/earthquake.jpg"),
                txt: "Earthquake",
                txtroute: () {
                  Navigator.pushNamed(context, "/3rd");
                }),
            // Flood card
            Disaster(
                photo: AssetImage("Images/flood.jpg"),
                txt: "Flood",
                txtroute: () {
                  Navigator.pushNamed(context, "/2nd");
                }),
            // Cyclone card
            Disaster(
                photo: AssetImage("Images/cyclone.jpg"),
                txt: "Cyclone",
                txtroute: () {
                  Navigator.pushNamed(context, "/4th");
                }),
            // Landslide card
            Disaster(
                photo: AssetImage("Images/landslide.jpg"),
                txt: "Landslide",
                txtroute: () {
                  Navigator.pushNamed(context, "/5th");
                }),
          ],
        ),
      ),
    );
  }
}
