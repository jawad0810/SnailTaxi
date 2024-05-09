import 'package:flutter/material.dart';
import 'package:snail_taxi_app/onboarding/utils/app_theme.dart';
import 'package:snail_taxi_app/paymentpages/bookingdetail.dart';

// ignore: camel_case_types
class ArrivingPage extends StatefulWidget {
  const ArrivingPage({super.key});

  @override
  State<ArrivingPage> createState() => _ArrivingPageState();
}

// ignore: camel_case_types
class _ArrivingPageState extends State<ArrivingPage> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: Stack(
          children: [
            Positioned(
              // left: 0,
              // right: 0,
              top: 0,
              child: Container(
                color: Colors.grey,
                height: 130,
                width: 400,
                //color: Colors.amber,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
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
                        width: 100,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: const Text(
                          'Arriving',
                          style: TextStyle(
                              // color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 50,
              left: 30,
              right: 30,
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(45),
                    color: AppTheme.grey,
                  ),
                  height: 280,
                  width: 300,
                  child: Column(
                    children: [
                      Container(
                        height: 30,
                        width: 400,
                        // color: Colors.black,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 8,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Stack(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Container(
                                  height: 40,
                                  width: 400,
                                  // color: Colors.amberAccent,
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 225,
                                        // color: Colors.green,
                                        child: const Text(
                                          "Arriving",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900),
                                        ),
                                      ),
                                      Container(
                                        height: 40,
                                        width: 10,
                                        // color: Colors.green,
                                        child: const Text(
                                          '5',
                                          style: TextStyle(
                                              color: AppTheme.barcolor),
                                        ),
                                      ),
                                      Container(
                                        height: 40,
                                        width: 50,
                                        // color: Colors.green,
                                        child: const Text('min',
                                            style: TextStyle(
                                                color: AppTheme.barcolor)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Container(
                                    height: 80,
                                    width: 400,
                                    // color: Colors.green,
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 60,
                                          width: 65,
                                          // color: Colors.amber,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                child: Container(
                                                  height: 50,
                                                  width: 50,
                                                  // color: Colors.red,
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    child: Image.asset(
                                                      "assets/images/piccall.png",
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                top: 40,
                                                right: 0,
                                                child: Container(
                                                  height: 25,
                                                  width: 25,
                                                  // color: Colors.blue,
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    child: Image.asset(
                                                      "assets/images/taxi.jpeg",
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 3,
                                        ),
                                        Container(
                                          height: 50,
                                          width: 120,
                                          // color: Colors.amber,
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 25,
                                                width: 120,
                                                // color: Colors.blue,
                                                child: const Text(
                                                  "Joe Smith",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                              ),
                                              Container(
                                                height: 25,
                                                width: 120,
                                                // color: Colors.blue,
                                                child: const Text(
                                                    "skoda Octavia."),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 3,
                                        ),
                                        Container(
                                          height: 50,
                                          width: 90,
                                          // color: Colors.amber,
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 25,
                                                width: 80,
                                                // color: Colors.brown,
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      height: 20,
                                                      width: 20,
                                                      // color: Colors.blueGrey,
                                                      child: Image.asset(
                                                          "assets/images/star1.png"),
                                                    ),
                                                    Container(
                                                      height: 20,
                                                      width: 30,
                                                      // color: Colors.brown,
                                                      child: const Text(
                                                        "4.2",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .w900),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  color: Colors.grey,
                                                ),
                                                height: 25,
                                                width: 90,
                                                child: const Center(
                                                  child: Text(
                                                    "22 A 228 10",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 3,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 70,
                                width: 250,
                                // color: Colors.blue,
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        height: 60,
                                        width: 60,
                                        child: Image.asset(
                                            "assets/images/Cancell.png"),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const BookingDetailPage()));
                                        },
                                        child: Container(
                                          height: 60,
                                          width: 60,
                                          child: Image.asset(
                                              "assets/images/Text.png"),
                                        ),
                                      ),
                                      Container(
                                        height: 60,
                                        width: 60,
                                        child: Image.asset(
                                            "assets/images/Call.png"),
                                      ),
                                    ]),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
