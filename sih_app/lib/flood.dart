import 'package:flutter/material.dart';

class Flood extends StatelessWidget {
  const Flood({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Flood",
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
              child: Image.asset("Images/flood-1.jpg"),
            ),
            // Card with a description of a flood
            const Card(
              child: Text(
                "A flood is an overflow of water that submerges land that is normally dry. Floods can be caused by a variety of factors, including heavy rainfall, snowmelt, storm surge, and dam failure.",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
