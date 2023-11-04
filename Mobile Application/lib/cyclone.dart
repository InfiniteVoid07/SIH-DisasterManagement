import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'components.dart';

class Cyclone extends StatelessWidget {
  const Cyclone({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text(
            "Cyclone",
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
                      child: Image(image: AssetImage("Images/cyclone-2.jpg"))),
                ),
              ),

              // Card with a description of a Cyclone
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: const Card(
                    color: Colors.black,
                    child: Text(
                      "A cyclone is a rapidly rotating storm system that originates over tropical oceans. It is characterized by a low-pressure center, strong winds, and heavy rain.",
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
                hp: 5,
                re: 20,
                ht: 100,
                wd: 350,
                photo: AssetImage('Images/cdo1.png'),
              ),
              const ImageImport(
                vp: 10,
                hp: 5,
                re: 20,
                ht: 100,
                wd: 350,
                photo: AssetImage('Images/cdo2.png'),
              ),
              const ImageImport(
                vp: 10,
                hp: 5,
                re: 20,
                ht: 100,
                wd: 350,
                photo: AssetImage('Images/cdo3.png'),
              ),
              const ImageImport(
                vp: 10,
                hp: 5,
                re: 20,
                ht: 100,
                wd: 350,
                photo: AssetImage('Images/cdo4.png'),
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
                hp: 5,
                re: 20,
                ht: 100,
                wd: 350,
                photo: AssetImage('Images/cdont1.png'),
              ),
              const ImageImport(
                vp: 10,
                hp: 5,
                re: 20,
                ht: 100,
                wd: 350,
                photo: AssetImage('Images/cdont2.png'),
              ),
              const ImageImport(
                vp: 10,
                hp: 5,
                re: 20,
                ht: 100,
                wd: 350,
                photo: AssetImage('Images/cdont3.png'),
              ),
              const ImageImport(
                vp: 10,
                hp: 5,
                re: 20,
                ht: 100,
                wd: 350,
                photo: AssetImage('Images/cdont4.png'),
              ),

              //Code to open a URL
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () async {
                  final Uri url = Uri.parse(
                      'https://infinitevoid07.github.io/SIH-DisasterManagement/cyclone.html');
                  await launchUrl(url);
                },
                child: Text('For more Information about Cyclones'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ));
  }
}
