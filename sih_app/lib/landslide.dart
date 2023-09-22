import 'package:flutter/material.dart';

class Landslide extends StatelessWidget {
  const Landslide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Landslide",
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Card with an image
            Card(
              child: Image.asset("Images/landslide-2.jpg"),
            ),
            // Card with a description of a landslide
            Card(
              child: Text(
                "A landslide is a mass movement of rock, earth, or debris down a slope. Landslides can be caused by a variety of factors, including heavy rainfall, rapid snowmelt, earthquakes, and volcanic eruptions.",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
