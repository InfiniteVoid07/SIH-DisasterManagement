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
            // Heading
            const SizedBox(height: 10),
            const Text(
              "Do's",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
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
                                "Get Good bhai",
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
            //Heading
            const SizedBox(height: 10),
            const Text(
              "Don't",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
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
                                "Get even more good",
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
