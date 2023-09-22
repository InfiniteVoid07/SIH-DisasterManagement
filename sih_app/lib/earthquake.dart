import 'package:flutter/material.dart';

class Earthquake extends StatelessWidget {
  const Earthquake({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Earthquake",
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Card with an image
            Card(
              child: Image.asset("Images/earthquake-1.jpg"),
            ),
            // Card with a description of an earthquake
            Card(
              child: Text(
                "Earthquake is a sudden shaking of the ground caused by the movement of rock beneath the surface of the Earth. Earthquakes can range in intensity from a barely noticeable tremor to a violent shaking that can destroy entire cities.",
                style: TextStyle(fontSize: 22.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
