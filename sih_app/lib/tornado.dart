import 'package:flutter/material.dart';

class Tornado extends StatelessWidget {
  const Tornado({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Tornado",
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
              child: Image.asset("Images/tornado-2.jpg"),
            ),
            // Card with a description of a tornado
            const Card(
              child: Text(
                "A tornado is a rapidly rotating column of air that extends from a thunderstorm to the ground. Tornadoes can also cause significant damage to property and infrastructure, and they can lead to loss of life.",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
