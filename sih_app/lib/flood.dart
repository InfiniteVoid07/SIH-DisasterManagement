import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'components.dart';

class Flood extends StatelessWidget {
  Flood({super.key});

  final List<String> states = [
    'Andhra Pradesh :-  +8645246600',
    'Arunachal Pradesh :- +7005403565',
    'Assam :- +0361-2237221',
    'Bihar :- +910612- 2547232',
    'Chhattisgarh :- +0771-2223471',
    'Dadra and Nagar Haveli :- +0260-2642721',
    'Daman and Diu :- +0260-2642721',
    'Delhi :-  +011-23438091',
    'Goa :- +0832-2419550',
    'Gujarat :- +91-79-23259283',
    'Haryana :- +91-11-23978046',
    'Himachal Pradesh :- +0177-2929688',
    'Jammu and Kashmir :- +0194-2472580',
    'Jharkhand :- +91 651-2400218/31',
    'Karnataka :- +08382-229857',
    'Kerala :- +91-471-2778855',
    'Ladakh :- +01982-260888 ',
    'Lakshadweep :- +04896-263900 ',
    'Madhya Pradesh :-  (+91)0755-2446136/137/138',
    'Maharashtra :- +022-22027990',
    'Manipur :- +03848-222662',
    'Meghalaya :- +0364-2226579',
    'Mizoram :- +0389 2342520',
    'Nagaland :- +0370-2270050',
    'Odisha :- +0674-2395398/ 2395531',
    'Puducherry :- +(0413) 2299500',
    'Punjab :- +91-172-2749056 ',
    'Rajasthan :- +0141-2227084 ',
    'Sikkim :- +03592-202664',
    'Tamil Nadu :- +044-28410540',
    'Telangana :- +23442944,23442955',
    'Tripura :- +0381-2415385',
    'Uttar Pradesh :- +0522-2306882',
    'Uttarakhand :- +0135-2710334',
    'West Bengal :- +91-33-22143526',
  ];
  final Map<String, String> stateToPhoneNumbers = {
    'Andhra Pradesh': '(0863) 2345678',
    'Arunachal Pradesh': '(0360) 2345678',
    // ...
  };
  String selectedState = '';

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
                hp: 5,
                re: 20,
                ht: 100,
                wd: 340,
                photo: AssetImage('Images/fdo1.png'),
              ),
              const ImageImport(
                vp: 10,
                hp: 5,
                re: 20,
                ht: 100,
                wd: 340,
                photo: AssetImage('Images/fdo2.png'),
              ),
              const ImageImport(
                vp: 10,
                hp: 5,
                re: 20,
                ht: 100,
                wd: 340,
                photo: AssetImage('Images/fdo3.png'),
              ),
              const ImageImport(
                vp: 10,
                hp: 5,
                re: 20,
                ht: 100,
                wd: 340,
                photo: AssetImage('Images/fdo4.png'),
              ),
              const ImageImport(
                vp: 10,
                hp: 5,
                re: 20,
                ht: 100,
                wd: 340,
                photo: AssetImage('Images/fdo5.png'),
              ),
              const ImageImport(
                vp: 10,
                hp: 5,
                re: 20,
                ht: 100,
                wd: 340,
                photo: AssetImage('Images/fdo6.png'),
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
                wd: 340,
                photo: AssetImage('Images/fdont1.png'),
              ),
              const ImageImport(
                vp: 10,
                hp: 5,
                re: 20,
                ht: 100,
                wd: 340,
                photo: AssetImage('Images/fdont2.png'),
              ),
              const ImageImport(
                vp: 10,
                hp: 5,
                re: 20,
                ht: 100,
                wd: 340,
                photo: AssetImage('Images/fdont3.png'),
              ),
              const ImageImport(
                vp: 10,
                hp: 5,
                re: 20,
                ht: 100,
                wd: 340,
                photo: AssetImage('Images/fdont4.png'),
              ),
              const ImageImport(
                vp: 10,
                hp: 5,
                re: 20,
                ht: 100,
                wd: 340,
                photo: AssetImage('Images/fdont5.png'),
              ),

              //Heading
              const SizedBox(height: 20),
              const Text(
                "Rescue Helpline Number:-",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(height: 10),

              // Drop Down - Rescue Centres
              DropdownButton<String>(
                value: null,
                items: states
                    .map((state) => DropdownMenuItem<String>(
                          child: Text(state),
                          value: state,
                        ))
                    .toList(),
                onChanged: (value) {
                  // Display the helpline numbers for the selected state.
                  // ...
                },
                icon: const Icon(Icons.arrow_drop_down,
                    color: Colors
                        .white), // This will make the dropdown arrow white.
              ),
              // Display the helpline number for the selected state.
              if (selectedState.isNotEmpty)
                Text(
                  'Rescue Helpline Number for $selectedState: ${stateToPhoneNumbers[selectedState]}',
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

              //Code to open a URL
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () async {
                  final Uri url = Uri.parse(
                      'https://infinitevoid07.github.io/SIH-DisasterManagement/flood.html');
                  await launchUrl(url);
                },
                child: Text('For more Information about Floods'),
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
