import 'package:flutter/material.dart';

class Earthquake extends StatelessWidget {
  const Earthquake({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Card with an image
            Card(
              child: Container(
                width: MediaQuery.of(context).size.width * 1.0,
                height: MediaQuery.of(context).size.height * 0.2,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("Images/earthquake-1.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            // Card with a description of an earthquake
            const Card(
              child: Text(
                "Earthquake is a sudden shaking of the ground caused by the movement of rock beneath the surface of the Earth. Earthquakes can range in intensity from a barely noticeable tremor to a violent shaking that can destroy entire cities.",
                style: TextStyle(fontSize: 22.0),
              ),
            ),
            // Card with two cards inside
            Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Card on the left side covering 40% of the screen
                  Card(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.height * 0.2,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("Images/earthquake-2.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  // Card on the right side covering 60% of the screen
                  Expanded(
                    child: Card(
                      child: Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.6,
                            child: const Flexible(
                              flex: 1,
                              child: Text(
                                "Earthquake is a sudden shaking of the ground caused by the movement of rock beneath the surface of the Earth. Earthquakes can range in intensity from a barely noticeable tremor to a violent shaking that can destroy entire cities.",
                                style: TextStyle(fontSize: 20.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
