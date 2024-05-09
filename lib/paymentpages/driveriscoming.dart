import 'package:flutter/material.dart';
import 'package:snail_taxi_app/onboarding/utils/app_theme.dart';
import 'package:snail_taxi_app/paymentpages/paymentOptions.dart';

// ignore: camel_case_types
class DriverIsComingPage extends StatefulWidget {
  const DriverIsComingPage({super.key});

  @override
  State<DriverIsComingPage> createState() => _DriverIsComingPageState();
}

// ignore: camel_case_types
class _DriverIsComingPageState extends State<DriverIsComingPage> {
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
                        width: 80,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: const Text(
                          'Driver is Coming',
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
              bottom: 40,
              left: 30,
              right: 30,
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(45),
                    color: AppTheme.grey,
                  ),
                  height: 550,
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
                                          // child: ClipRRect(
                                          //   borderRadius:
                                          //       BorderRadius.circular(10),
                                          //   child: Image.asset(
                                          //     "assets/images/piccall.png",
                                          //     fit: BoxFit.fill,
                                          //   ),
                                          // ),
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
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 1),
                                child: Container(
                                  height: 170,
                                  width: 400,
                                  // color: Colors.red,
                                  child: Container(
                                    // alignment: Alignment.topLeft,

                                    height: 250,
                                    width: 350,
                                    child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 25),
                                        child: Column(
                                          children: [
                                            Container(
                                                alignment: Alignment.topLeft,
                                                height: 22,
                                                width: 210,
                                                // color: Colors.green,
                                                child: const Text(
                                                  'pickup point',
                                                  style: TextStyle(
                                                      color: AppTheme.greyColor,
                                                      fontSize: 16),
                                                )),
                                            Container(
                                              alignment: Alignment.centerLeft,
                                              height: 145,
                                              width: 330,
                                              // color: Colors.greenAccent,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                      height: 145,
                                                      width: 25,
                                                      // color: Colors.yellow,
                                                      child: Column(
                                                        children: [
                                                          Container(
                                                            height: 25,
                                                            width: 25,
                                                            // color: Colors.red,
                                                            child: Image.asset(
                                                                "assets/images/Circle.png"),
                                                          ),
                                                          Container(
                                                            height: 60,
                                                            width: 25,
                                                            // color: Colors.red,
                                                            child: Image.asset(
                                                                "assets/images/Line02.png"),
                                                          ),
                                                          Container(
                                                            height: 25,
                                                            width: 25,
                                                            // color: Colors.red,
                                                            child: Image.asset(
                                                                "assets/images/location-Icon.png"),
                                                          ),
                                                          //Container(height: 10,width: 10,color: Colors.red,child: Image.asset("assets/images/"),),
                                                        ],
                                                      )),
                                                  Container(
                                                    height: 130,
                                                    width: 250,
                                                    // color: Colors.pink,
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                          height: 23,
                                                          width: 250,
                                                          // color: Colors.blue,
                                                          child: const Text(
                                                            'Bisupara, Bashtola 410',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 18),
                                                          ),
                                                        ),
                                                        Row(
                                                          children: [
                                                            Container(
                                                              height: 45,
                                                              width: 180,
                                                              // color: Colors.grey,
                                                              child:
                                                                  const Center(
                                                                child: Divider(
                                                                  height: 20,
                                                                  color: Colors
                                                                      .grey,
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                                height: 30,
                                                                width: 30,
                                                                //color: Colors.black,
                                                                child:
                                                                    const Icon(
                                                                  Icons
                                                                      .local_taxi,
                                                                  color: Colors
                                                                      .grey,
                                                                ))
                                                          ],
                                                        ),
                                                        Container(
                                                          height: 20,
                                                          width: 250,
                                                          // color: Colors.blueGrey,
                                                          child: const Text(
                                                            'Pick Off',
                                                            style: TextStyle(
                                                                color: AppTheme
                                                                    .greyColor,
                                                                fontSize: 16),
                                                          ),
                                                        ),
                                                        Container(
                                                          height: 30,
                                                          width: 250,
                                                          // color: Colors.greenAccent,
                                                          child: const Text(
                                                            'Beza Building, aadis 4586',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 18),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        )),
                                  ),
                                ),
                              ),
                              Container(
                                  height: 60,
                                  width: 250,
                                  // color: Colors.blue,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 60,
                                        width: 50,
                                        // color: Colors.amber,
                                        child: const Divider(
                                          color: Colors.grey,
                                          thickness:
                                              1.0, // You can adjust the thickness as needed
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        height: 30,
                                        width: 100,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          border: Border.all(
                                              color: Colors.grey, width: 3),
                                          // color: Colors.amber,
                                        ),
                                        child: const Center(
                                            child: Text(
                                          "Price",
                                          style: TextStyle(color: Colors.grey),
                                        )),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        height: 60,
                                        width: 50,
                                        // color: Colors.amber,
                                        child: const Divider(
                                          color: Colors.grey,
                                          thickness:
                                              1.0, // You can adjust the thickness as needed
                                        ),
                                      ),
                                    ],
                                  )),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 60,
                                width: 350,
                                // color: Colors.blue,
                                child: Column(
                                  children: [
                                    Container(
                                      height: 60,
                                      width: 100,
                                      // color: Colors.amber,
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 30,
                                            width: 20,
                                            // color: Colors.green,
                                            child: const Text(
                                              "\$",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w900),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      paymentOptionPage(),
                                                ),
                                              );
                                            },
                                            child: Container(
                                              height: 60,
                                              width: 60,
                                              // color: Colors.green,
                                              child: const Text(
                                                "76",
                                                style: TextStyle(
                                                    fontSize: 50,
                                                    fontWeight:
                                                        FontWeight.w900),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 30,
                                            width: 20,
                                            // color: Colors.green,
                                            child: const Text(
                                              "92",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w900),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 20,
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
                                      Container(
                                        height: 60,
                                        width: 60,
                                        child: Image.asset(
                                            "assets/images/Text.png"),
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
