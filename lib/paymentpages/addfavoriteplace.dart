import 'package:flutter/material.dart';
import 'package:snail_taxi_app/onboarding/utils/app_theme.dart';
import 'package:snail_taxi_app/paymentpages/address-selection.dart';

class AddFavoritePlacePage extends StatefulWidget {
  const AddFavoritePlacePage({super.key});

  @override
  State<AddFavoritePlacePage> createState() => _IAddFavoritePlacePageState();
}

class _IAddFavoritePlacePageState extends State<AddFavoritePlacePage> {
  bool imgsize = false;
  bool isVolumeOn = false;

  void toggleVolume() {
    setState(() {
      isVolumeOn = !isVolumeOn;
    });
  }

  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          height: 770,
          width: 400,
          // color: Colors.red,
          child: Stack(children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                height: 150,
                width: 200,
                // color: Colors.amber,
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          child: Image.asset(
                            "assets/images/Back.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 80,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: const Text(
                          'Favorite place',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Stack(children: [
              Positioned(
                  right: 30,
                  top: 140,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  // color: Colors.white,
                                  height: 210,
                                  width: 320,
                                  decoration: BoxDecoration(
                                    // color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                        40), // Adjust the radius as needed
                                  ),
                                  alignment: Alignment.topCenter,
                                  child: Image.asset(
                                      "assets/images/WorldConnection.png"),
                                ),
                                Container(
                                  // color: Colors.white,
                                  height: 70,
                                  width: 320,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(
                                      color: AppTheme
                                          .barcolor, // Set border color to red
                                      width: 2, // Set border width
                                    ), // Adjust the radius as needed
                                  ),
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 50,
                                          width: 25,
                                          // color: Colors.green,
                                          child: Image.asset(
                                              "assets/images/Pin.png"),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          height: 50,
                                          width: 25,
                                          // color: Colors.blue,
                                          child: Image.asset(
                                              "assets/images/Line03.png"),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          height: 40,
                                          width: 220,
                                          // color: Colors.pink,
                                          child: const TextField(
                                            decoration: InputDecoration(
                                              hintText: 'Place Name',
                                              hintStyle: TextStyle(
                                                  color: AppTheme.barcolor),
                                              border: InputBorder
                                                  .none, // Remove bottom line
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  // color: Colors.white,
                                  height: 70,
                                  width: 320,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(
                                      color: AppTheme
                                          .barcolor, // Set border color to red
                                      width: 2, // Set border width
                                    ), // Adjust the radius as needed
                                  ),
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 50,
                                          width: 25,
                                          // color: Colors.green,
                                          child: Image.asset(
                                              "assets/images/location-Icon.png"),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          height: 50,
                                          width: 25,
                                          // color: Colors.blue,
                                          child: Image.asset(
                                              "assets/images/Line03.png"),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          height: 40,
                                          width: 180,
                                          // color: Colors.pink,
                                          child: const TextField(
                                            decoration: InputDecoration(
                                              hintText: 'Place Address',
                                              hintStyle: TextStyle(
                                                  color: AppTheme.barcolor),
                                              border: InputBorder
                                                  .none, // Remove bottom line
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: AppTheme.yellow,
                                          ),
                                          child: Center(
                                            child: Image.asset(
                                              "assets/images/Location1.png",
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                SizedBox(
                                  width: 230,
                                  height: 55,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: AppTheme.yellow,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    child: const Text(
                                      'Save Place',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
                                    onPressed: () async {
                                      await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const AddressSelectionPage(), // Remove 'const' from here
                                        ),
                                      );
                                    },
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
            ]),
          ]),
        ),
      ),
    );
  }
}
