import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'components.dart';

class Flood extends StatelessWidget {
  const Flood({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text(
            "Floods",
            style: TextStyle(
              fontSize: 35.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Card with an image
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: const Card(
                      color: Colors.black,
                      child: Image(image: AssetImage("Images/flood-1.jpg"))),
                ),
              ),

              // Card with a description of a Flood
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: const Card(
                    color: Colors.black,
                    child: Text(
                      "A flood is an overflow of water that submerges land that is normally dry. Floods can be caused by a variety of factors, including heavy rainfall, snowmelt, storm surge, and dam failure.",
                      style: TextStyle(fontSize: 22.0, color: Colors.white),
                    ),
                  ),
                ),
              ),

              // Heading
              const SizedBox(height: 10),
              const Text(
                "Do's",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
              const SizedBox(height: 10),

              //Images
              const ImageImport(
                vp: 10,
                hp: 1,
                re: 20,
                ht: 160,
                wd: 320,
                photo: AssetImage('Images/edo1.png'),
              ),

              //Heading
              const SizedBox(height: 20),
              const Text(
                "Don't",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
              const SizedBox(height: 10),

              //Images
              const ImageImport(
                vp: 10,
                hp: 1,
                re: 20,
                ht: 160,
                wd: 320,
                photo: AssetImage('Images/edont1.png'),
              ),

              //Code to open a URL
              ElevatedButton(
                onPressed: () async {
                  final Uri url = Uri.parse(
                      'https://infinitevoid07.github.io/SIH-DisasterManagement/flood.html');
                  await launchUrl(url);
                },
                child: Text('For more Information'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
              ),
            ],
          ),
        ));
  }
}
