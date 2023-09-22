import 'package:flutter/material.dart';

class Cyclone extends StatelessWidget {
  const Cyclone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Cyclone",
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
              child: Image.asset("Images/cyclone-2.jpg"),
            ),
            // Card with a description of a cyclone
            const Card(
              child: Text(
                "A cyclone is a rapidly rotating storm system that originates over tropical oceans. It is characterized by a low-pressure center, strong winds, and heavy rain.",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
