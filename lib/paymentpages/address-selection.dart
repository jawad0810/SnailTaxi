import 'package:flutter/material.dart';
import 'package:snail_taxi_app/onboarding/utils/app_theme.dart';
import 'package:snail_taxi_app/paymentpages/Booking.dart';

// ignore: camel_case_types
class AddressSelectionPage extends StatefulWidget {
  const AddressSelectionPage({super.key});

  @override
  State<AddressSelectionPage> createState() => _AddressSelectionPageState();
}

// ignore: camel_case_types
class _AddressSelectionPageState extends State<AddressSelectionPage> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: SingleChildScrollView(
          child: Container(
            height: 800,
            width: 400,
            // color: Colors.red,
            child: Stack(
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
                              'Select Address',
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
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                        color: AppTheme.grey,
                      ),
                      height: 650,
                      width: 400,
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
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1),
                                    child: Container(
                                      // alignment: Alignment.topLeft,

                                      height: 580,
                                      width: 400,
                                      // color: Colors.brown,
                                      child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15),
                                          child: Column(
                                            children: [
                                              Container(
                                                  alignment: Alignment.topLeft,
                                                  height: 22,
                                                  width: 210,
                                                  //  color: Colors.green,
                                                  child: const Text(
                                                    'pickup point',
                                                    style: TextStyle(
                                                        color:
                                                            AppTheme.greyColor,
                                                        fontSize: 16),
                                                  )),
                                              Container(
                                                alignment: Alignment.centerLeft,
                                                height: 145,
                                                width: 350,
                                                // color: Colors.greenAccent,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                        height: 145,
                                                        width: 50,
                                                        //  color: Colors.yellow,
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
                                                      width: 300,
                                                      // color: Colors.pink,
                                                      child: Column(
                                                        children: [
                                                          Container(
                                                            height: 23,
                                                            width: 300,
                                                            //   color: Colors.blue,
                                                            child:
                                                                const TextField(
                                                              decoration:
                                                                  InputDecoration(
                                                                hintText:
                                                                    "Write Pickup point",
                                                                hintStyle: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w800),
                                                                border:
                                                                    InputBorder
                                                                        .none,
                                                              ),
                                                            ),
                                                          ),
                                                          Row(
                                                            children: [
                                                              Container(
                                                                height: 45,
                                                                width: 230,
                                                                // color:
                                                                //     Colors.grey,
                                                                child:
                                                                    const Center(
                                                                  child:
                                                                      Divider(
                                                                    height: 20,
                                                                    // color: Colors
                                                                    //     .grey,
                                                                  ),
                                                                ),
                                                              ),
                                                              GestureDetector(
                                                                onTap: () {
                                                                  Navigator.push(
                                                                      context,
                                                                      MaterialPageRoute(
                                                                          builder: (context) =>
                                                                              const BookingPage()));
                                                                },
                                                                child:
                                                                    Container(
                                                                  height: 50,
                                                                  width: 50,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            15),
                                                                    color: AppTheme
                                                                        .yellow,
                                                                  ),
                                                                  child: Center(
                                                                    child: Image
                                                                        .asset(
                                                                      "assets/images/Location1.png",
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Container(
                                                            height: 20,
                                                            width: 250,
                                                            // color:
                                                            //     Colors.blueGrey,
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
                                                            width: 300,
                                                            // color: Colors
                                                            //     .greenAccent,
                                                            child: Container(
                                                              height: 23,
                                                              width: 300,
                                                              // color:
                                                              //     Colors.blue,
                                                              child:
                                                                  const TextField(
                                                                decoration:
                                                                    InputDecoration(
                                                                  hintText:
                                                                      "Where you want to go?",
                                                                  hintStyle: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w800),
                                                                  border:
                                                                      InputBorder
                                                                          .none,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              Container(
                                                height: 100,
                                                width: 350,
                                                // color: Colors.amberAccent,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    Container(
                                                      height: 50,
                                                      width: 50,
                                                      // color: Colors.pink,
                                                      child: Image.asset(
                                                          "assets/images/Frame.png"),
                                                    ),
                                                    Container(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      height: 50,
                                                      width: 250,
                                                      // color: Colors.pinkAccent,
                                                      child: const Text(
                                                        "Saved Places",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w900,
                                                            fontSize: 20),
                                                      ),
                                                    ),
                                                    Container(
                                                      height: 50,
                                                      width: 50,
                                                      // color: Colors.pink,
                                                      child: Image.asset(
                                                          "assets/images/Right2.png"),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                height: 60,
                                                width: 350,
                                                // color: Colors.amberAccent,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    Container(
                                                      height: 50,
                                                      width: 50,
                                                      // color: Colors.pink,
                                                      child: Image.asset(
                                                          "assets/images/Work-Icon.png"),
                                                    ),
                                                    Container(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        height: 100,
                                                        width: 250,
                                                        // color:
                                                        //     Colors.pinkAccent,
                                                        child: Column(
                                                          children: [
                                                            Container(
                                                              height: 30,
                                                              width: 250,
                                                              // color: Colors
                                                              //     .blueAccent,
                                                              child: Row(
                                                                children: [
                                                                  Container(
                                                                    height: 30,
                                                                    width: 60,
                                                                    // color: Colors
                                                                    //     .purpleAccent,
                                                                    child:
                                                                        const Text(
                                                                      "Work",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              20,
                                                                          fontWeight:
                                                                              FontWeight.w900),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    height: 30,
                                                                    width: 10,
                                                                    // color: Colors
                                                                    //     .purple,
                                                                    child:
                                                                        const Text(
                                                                      "(",
                                                                      style: TextStyle(
                                                                          color: AppTheme
                                                                              .barcolor,
                                                                          fontSize:
                                                                              18),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    height: 30,
                                                                    width: 30,
                                                                    // color: Colors
                                                                    //     .purple,
                                                                    child:
                                                                        const Text(
                                                                      "10",
                                                                      style: TextStyle(
                                                                          color: AppTheme
                                                                              .barcolor,
                                                                          fontSize:
                                                                              18),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    height: 30,
                                                                    width: 40,
                                                                    // color: Colors
                                                                    //     .purple,
                                                                    child:
                                                                        const Text(
                                                                      "min",
                                                                      style: TextStyle(
                                                                          color: AppTheme
                                                                              .barcolor,
                                                                          fontSize:
                                                                              18),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    height: 30,
                                                                    width: 10,
                                                                    // color: Colors
                                                                    //     .purple,
                                                                    child:
                                                                        const Text(
                                                                      ",",
                                                                      style: TextStyle(
                                                                          color: AppTheme
                                                                              .barcolor,
                                                                          fontSize:
                                                                              18),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    height: 30,
                                                                    width: 40,
                                                                    // color: Colors
                                                                    //     .purple,
                                                                    child:
                                                                        const Text(
                                                                      "2.9",
                                                                      style: TextStyle(
                                                                          color: AppTheme
                                                                              .barcolor,
                                                                          fontSize:
                                                                              18),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    height: 30,
                                                                    width: 40,
                                                                    // color: Colors
                                                                    //     .purple,
                                                                    child:
                                                                        const Text(
                                                                      "km",
                                                                      style: TextStyle(
                                                                          color: AppTheme
                                                                              .barcolor,
                                                                          fontSize:
                                                                              18),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    height: 30,
                                                                    width: 10,
                                                                    // color: Colors
                                                                    //     .purple,
                                                                    child:
                                                                        const Text(
                                                                      ")",
                                                                      style: TextStyle(
                                                                          color: AppTheme
                                                                              .barcolor,
                                                                          fontSize:
                                                                              18),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Container(
                                                              height: 30,
                                                              width: 250,
                                                              // color: Colors
                                                              //     .lightBlueAccent,
                                                              child: const Text(
                                                                "Studio 08 jake Stream",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        20),
                                                              ),
                                                            ),
                                                          ],
                                                        )),
                                                    Container(
                                                      height: 50,
                                                      width: 50,
                                                      // color: Colors.pink,
                                                      child: const Icon(
                                                        Icons.edit,
                                                        color:
                                                            AppTheme.barcolor,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                height: 20,
                                                child: Image.asset(
                                                    "assets/images/Line3.png"),
                                              ),
                                              Container(
                                                height: 60,
                                                width: 350,
                                                // color: Colors.amberAccent,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    Container(
                                                      height: 50,
                                                      width: 50,
                                                      // color: Colors.pink,
                                                      child: Image.asset(
                                                          "assets/images/Home-Icon.png"),
                                                    ),
                                                    Container(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        height: 100,
                                                        width: 250,
                                                        // color:
                                                        //     Colors.pinkAccent,
                                                        child: Column(
                                                          children: [
                                                            Container(
                                                              height: 30,
                                                              width: 250,
                                                              // color: Colors
                                                              //     .blueAccent,
                                                              child: Row(
                                                                children: [
                                                                  Container(
                                                                    height: 30,
                                                                    width: 60,
                                                                    // color: Colors
                                                                    //     .purpleAccent,
                                                                    child:
                                                                        const Text(
                                                                      "Work",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              20,
                                                                          fontWeight:
                                                                              FontWeight.w900),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    height: 30,
                                                                    width: 10,
                                                                    // color: Colors
                                                                    //     .purple,
                                                                    child:
                                                                        const Text(
                                                                      "(",
                                                                      style: TextStyle(
                                                                          color: AppTheme
                                                                              .barcolor,
                                                                          fontSize:
                                                                              18),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    height: 30,
                                                                    width: 30,
                                                                    // color: Colors
                                                                    //     .purple,
                                                                    child:
                                                                        const Text(
                                                                      "43",
                                                                      style: TextStyle(
                                                                          color: AppTheme
                                                                              .barcolor,
                                                                          fontSize:
                                                                              18),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    height: 30,
                                                                    width: 40,
                                                                    // color: Colors
                                                                    //     .purple,
                                                                    child:
                                                                        const Text(
                                                                      "min",
                                                                      style: TextStyle(
                                                                          color: AppTheme
                                                                              .barcolor,
                                                                          fontSize:
                                                                              18),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    height: 30,
                                                                    width: 10,
                                                                    // color: Colors
                                                                    //     .purple,
                                                                    child:
                                                                        const Text(
                                                                      ",",
                                                                      style: TextStyle(
                                                                          color: AppTheme
                                                                              .barcolor,
                                                                          fontSize:
                                                                              18),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    height: 30,
                                                                    width: 40,
                                                                    // color: Colors
                                                                    //     .purple,
                                                                    child:
                                                                        const Text(
                                                                      "25",
                                                                      style: TextStyle(
                                                                          color: AppTheme
                                                                              .barcolor,
                                                                          fontSize:
                                                                              18),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    height: 30,
                                                                    width: 40,
                                                                    // color: Colors
                                                                    //     .purple,
                                                                    child:
                                                                        const Text(
                                                                      "km",
                                                                      style: TextStyle(
                                                                          color: AppTheme
                                                                              .barcolor,
                                                                          fontSize:
                                                                              18),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    height: 30,
                                                                    width: 10,
                                                                    // color: Colors
                                                                    //     .purple,
                                                                    child:
                                                                        const Text(
                                                                      ")",
                                                                      style: TextStyle(
                                                                          color: AppTheme
                                                                              .barcolor,
                                                                          fontSize:
                                                                              18),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Container(
                                                              height: 30,
                                                              width: 250,
                                                              // color: Colors
                                                              //     .lightBlueAccent,
                                                              child: const Text(
                                                                "705 Green Summit",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        20),
                                                              ),
                                                            ),
                                                          ],
                                                        )),
                                                    Container(
                                                      height: 50,
                                                      width: 50,
                                                      // color: Colors.pink,
                                                      child: const Icon(
                                                        Icons.edit,
                                                        color:
                                                            AppTheme.barcolor,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                  height: 60,
                                                  width: 250,
                                                  // color: Colors.blue,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
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
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(30),
                                                          border: Border.all(
                                                              color:
                                                                  Colors.grey,
                                                              width: 3),
                                                          // color: Colors.amber,
                                                        ),
                                                        child: const Center(
                                                            child: Text(
                                                          "Recent",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.grey),
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
                                              Container(
                                                height: 40,
                                                width: 350,
                                                // color: Colors.amberAccent,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Container(
                                                      height: 25,
                                                      width: 40,
                                                      // color: Colors.red,
                                                      child: Image.asset(
                                                        "assets/images/Location-Icon03.png",
                                                      ),
                                                    ),
                                                    Container(
                                                      height: 40,
                                                      width: 300,
                                                      // color: Colors.redAccent,
                                                      child: const Text(
                                                        "Studio 65Murphy Islands",
                                                        style: TextStyle(
                                                            fontSize: 18),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                height: 40,
                                                width: 350,
                                                // color: Colors.amberAccent,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Container(
                                                      height: 25,
                                                      width: 40,
                                                      // color: Colors.red,
                                                      child: Image.asset(
                                                        "assets/images/Location-Icon03.png",
                                                      ),
                                                    ),
                                                    Container(
                                                      height: 40,
                                                      width: 300,
                                                      // color: Colors.redAccent,
                                                      child: const Text(
                                                        "Mexical Ct 13a",
                                                        style: TextStyle(
                                                            fontSize: 18),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          )),
                                    ),
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
            ),
          ),
        ));
  }
}
