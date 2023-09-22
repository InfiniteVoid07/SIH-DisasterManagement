import 'package:flutter/material.dart';
import 'components.dart';

class Earthquake extends StatelessWidget {
  const Earthquake({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          "Earthquake",
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
            const ImageImport(
              vp: 10,
              hp: 10,
              re: 10,
              photo: AssetImage('Images/earthquake-1.jpg'),
            ),

            // Card with a description of an earthquake
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: const Card(
                  color: Colors.black,
                  child: Text(
                    "Earthquake is a sudden shaking of the ground caused by the movement of rock beneath the surface of the Earth. Earthquakes can range in intensity from a barely noticeable tremor to a violent shaking that can destroy entire cities.",
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
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(height: 10),

            //Images
            const ImageImport(
              vp: 10,
              hp: 1,
              re: 20,
              photo: AssetImage('Images/edo1.png'),
            ),
            const ImageImport(
              vp: 10,
              hp: 1,
              re: 20,
              photo: AssetImage('Images/edo2.png'),
            ),
            const ImageImport(
              vp: 10,
              hp: 1,
              re: 20,
              photo: AssetImage('Images/edo3.png'),
            ),
            const ImageImport(
              vp: 10,
              hp: 1,
              re: 20,
              photo: AssetImage('Images/edo4.png'),
            ),
            const ImageImport(
              vp: 10,
              hp: 1,
              re: 20,
              photo: AssetImage('Images/edo5.png'),
            ),
            const ImageImport(
              vp: 10,
              hp: 1,
              re: 20,
              photo: AssetImage('Images/edo6.png'),
            ),

            //Heading
            const SizedBox(height: 20),
            const Text(
              "Don't",
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(height: 10),

            //Images
            const ImageImport(
              vp: 10,
              hp: 1,
              re: 20,
              photo: AssetImage('Images/edont1.png'),
            ),
            const ImageImport(
              vp: 10,
              hp: 1,
              re: 20,
              photo: AssetImage('Images/edont2.png'),
            ),
            const ImageImport(
              vp: 10,
              hp: 1,
              re: 20,
              photo: AssetImage('Images/edont3.png'),
            ),
            const ImageImport(
              vp: 10,
              hp: 1,
              re: 20,
              photo: AssetImage('Images/edont4.png'),
            ),
            const ImageImport(
              vp: 10,
              hp: 1,
              re: 20,
              photo: AssetImage('Images/edont5.png'),
            ),
            const ImageImport(
              vp: 10,
              hp: 1,
              re: 20,
              photo: AssetImage('Images/edont6.png'),
            ),
            const ImageImport(
              vp: 10,
              hp: 1,
              re: 20,
              photo: AssetImage('Images/edont7.png'),
            ),
            const ImageImport(
              vp: 10,
              hp: 1,
              re: 20,
              photo: AssetImage('Images/edont8.png'),
            ),
          ],
        ),
      ),
    );
  }
}
