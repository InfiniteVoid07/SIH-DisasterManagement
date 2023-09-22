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
      backgroundColor: Colors.black,
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //sized box to lower down The App title
              const SizedBox(
                height: 30.0,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 25, horizontal: 50),
                child: const Text(
                  'D-ऐPP',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              // Earthquake card
              Disaster(
                  photo: const AssetImage("Images/earthquake-3.jpg"),
                  txt: "Earthquake",
                  txtroute: () {
                    Navigator.pushNamed(context, "/3rd");
                  }),
              // Flood card
              Disaster(
                  photo: const AssetImage("Images/flood.jpg"),
                  txt: "Flood",
                  txtroute: () {
                    Navigator.pushNamed(context, "/2nd");
                  }),
              // Cyclone card
              Disaster(
                  photo: const AssetImage("Images/cyclone.jpg"),
                  txt: "Cyclone",
                  txtroute: () {
                    Navigator.pushNamed(context, "/4th");
                  }),
              // Landslide card
              Disaster(
                  photo: const AssetImage("Images/landslide.jpg"),
                  txt: "Landslide",
                  txtroute: () {
                    Navigator.pushNamed(context, "/5th");
                  }),
              // Tornado card
              Disaster(
                  photo: const AssetImage("Images/tornado.jpg"),
                  txt: "Tornado",
                  txtroute: () {
                    Navigator.pushNamed(context, "/6th");
                  })
            ],
          ),
        ),
      ),
    );
  }
}
