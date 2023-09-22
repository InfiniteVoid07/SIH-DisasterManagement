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
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //sized box to lower down The App title
            SizedBox(
              height: 30.0,
            ),
            Container(
              padding: EdgeInsets.all(12.0),
              child: Text(
                'd-ऐPP',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            // Earthquake card
            Disaster(
                photo: AssetImage("Images/earthquake-3.jpg"),
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
            // Tornado card
            Disaster(
                photo: AssetImage("Images/tornado.jpg"),
                txt: "Tornado",
                txtroute: () {
                  Navigator.pushNamed(context, "/6th");
                })
          ],
        ),
      ),
    );
  }
}
