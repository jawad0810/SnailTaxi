import 'package:flutter/material.dart';
import 'package:snail_taxi_app/onboarding/utils/app_theme.dart';
import 'package:snail_taxi_app/paymentpages/addfavoriteplace.dart';

// ignore: camel_case_types
class BookingDetailPage extends StatefulWidget {
  const BookingDetailPage({super.key});

  @override
  State<BookingDetailPage> createState() => _BookingDetailPageState();
}

// ignore: camel_case_types
class _BookingDetailPageState extends State<BookingDetailPage> {
  Color container1Color = Colors.transparent;
  Color container2Color = Colors.transparent;
  Color container3Color = Colors.transparent;

  void toggleContainerColor(int containerNumber) {
    setState(() {
      if (containerNumber == 1) {
        container2Color = Colors.transparent;
        container1Color = container1Color == Colors.transparent
            ? Colors.white
            : Colors.transparent;
        container3Color = Colors.transparent;
      } else if (containerNumber == 2) {
        container1Color = Colors.transparent;
        container2Color = container2Color == Colors.transparent
            ? Colors.white
            : Colors.transparent;
        container3Color = Colors.transparent;
      } else if (containerNumber == 3) {
        container1Color = Colors.transparent;
        container2Color = Colors.transparent;
        container3Color = container3Color == Colors.transparent
            ? Colors.white
            : Colors.transparent;
      }
    });
  }

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
                          'Chose a trip',
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
                  height: 500,
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
                        height: 5,
                      ),
                      Stack(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 400,
                                      // color: Colors.amberAccent,
                                      child: const Center(
                                        child: Text(
                                          "Select car",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w900),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 200,
                                      width: 400,
                                      // color: AppTheme.kPrimaryColor,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          GestureDetector(
                                            onTap: () =>
                                                toggleContainerColor(1),
                                            child: Column(
                                              children: [
                                                Column(
                                                  children: [
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30),
                                                        color: container1Color,
                                                      ),
                                                      height: 200,
                                                      width: 100,
                                                      // color: container1Color,
                                                      child: Column(
                                                        children: [
                                                          Container(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            height: 100,
                                                            width: 50,
                                                            // color: Colors.blue,
                                                            child: const Icon(Icons
                                                                .motorcycle_rounded),
                                                          ),
                                                          Container(
                                                            height: 20,
                                                            width: 40,
                                                            // color: Colors.amber,
                                                            child: const Text(
                                                              "Bike",
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w900,
                                                                  fontSize: 18),
                                                            ),
                                                          ),
                                                          Container(
                                                            height: 30,
                                                            width: 60,
                                                            // color:
                                                            //     Colors.purple,
                                                            child: Row(
                                                              children: [
                                                                Container(
                                                                  height: 20,
                                                                  width: 10,
                                                                  child: const Text(
                                                                      "5",
                                                                      style: TextStyle(
                                                                          color:
                                                                              AppTheme.barcolor)),
                                                                ),
                                                                Container(
                                                                  height: 20,
                                                                  width: 45,
                                                                  child:
                                                                      const Text(
                                                                    "nearbie",
                                                                    style: TextStyle(
                                                                        color: AppTheme
                                                                            .barcolor),
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            height: 40,
                                                            width: 80,
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          30),
                                                              // color: Colors
                                                              //     .amberAccent,
                                                            ),
                                                            child: Row(
                                                              children: [
                                                                Container(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerRight,
                                                                  height: 20,
                                                                  width: 20,
                                                                  // color: Colors
                                                                  //     .pink,
                                                                  child:
                                                                      const Text(
                                                                          "\$"),
                                                                ),
                                                                Container(
                                                                  height: 40,
                                                                  width: 30,
                                                                  // color: Colors
                                                                  //     .pink,
                                                                  child:
                                                                      const Center(
                                                                    child: Text(
                                                                      "5",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              30,
                                                                          fontWeight:
                                                                              FontWeight.w900),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  height: 20,
                                                                  width: 20,
                                                                  // color: Colors
                                                                  //     .pink,
                                                                  child:
                                                                      const Text(
                                                                          "63"),
                                                                ),
                                                              ],
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () =>
                                                toggleContainerColor(2),
                                            child: Column(
                                              children: [
                                                Column(
                                                  children: [
                                                    Container(
                                                      height: 200,
                                                      width: 100,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30),
                                                        color: container2Color,
                                                      ),
                                                      // color: container2Color,
                                                      child: Column(
                                                        children: [
                                                          Container(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            height: 100,
                                                            width: 50,
                                                            // color: Colors.blue,
                                                            child: const Icon(
                                                              Icons.local_taxi,
                                                              // color: AppTheme
                                                              //     .yellow,
                                                            ),
                                                          ),
                                                          Container(
                                                            height: 20,
                                                            width: 80,
                                                            // color: Colors.amber,
                                                            child: const Text(
                                                              "Standard",
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w900,
                                                                  fontSize: 18),
                                                            ),
                                                          ),
                                                          Container(
                                                            height: 30,
                                                            width: 60,
                                                            // color:
                                                            //     Colors.purple,
                                                            child: Row(
                                                              children: [
                                                                Container(
                                                                  height: 20,
                                                                  width: 10,
                                                                  child: const Text(
                                                                      "1",
                                                                      style: TextStyle(
                                                                          color:
                                                                              AppTheme.barcolor)),
                                                                ),
                                                                Container(
                                                                  height: 20,
                                                                  width: 45,
                                                                  child:
                                                                      const Text(
                                                                    "nearbie",
                                                                    style: TextStyle(
                                                                        color: AppTheme
                                                                            .barcolor),
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            height: 40,
                                                            width: 80,
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          30),
                                                              // color: Colors
                                                              //     .amberAccent,
                                                            ),
                                                            child: Row(
                                                              children: [
                                                                Container(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerRight,
                                                                  height: 20,
                                                                  width: 20,
                                                                  // color: Colors
                                                                  //     .pink,
                                                                  child:
                                                                      const Text(
                                                                          "\$"),
                                                                ),
                                                                Container(
                                                                  height: 40,
                                                                  width: 30,
                                                                  // color: Colors
                                                                  //     .pink,
                                                                  child:
                                                                      const Center(
                                                                    child: Text(
                                                                      "8",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              30,
                                                                          fontWeight:
                                                                              FontWeight.w900),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  height: 20,
                                                                  width: 20,
                                                                  // color: Colors
                                                                  //     .pink,
                                                                  child:
                                                                      const Text(
                                                                          "92"),
                                                                ),
                                                              ],
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () =>
                                                toggleContainerColor(3),
                                            child: Column(
                                              children: [
                                                Column(
                                                  children: [
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30),
                                                        color: container3Color,
                                                      ),
                                                      height: 200,
                                                      width: 100,
                                                      child: Column(
                                                        children: [
                                                          Container(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            height: 100,
                                                            width: 50,
                                                            // color: Colors.blue,
                                                            child: const Icon(
                                                              Icons.taxi_alert,
                                                            ),
                                                          ),
                                                          Container(
                                                            height: 20,
                                                            width: 80,
                                                            // color: Colors.amber,
                                                            child: const Text(
                                                              "Permium",
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w900,
                                                                  fontSize: 18),
                                                            ),
                                                          ),
                                                          Container(
                                                            height: 30,
                                                            width: 60,
                                                            // color:
                                                            //     Colors.purple,
                                                            child: Row(
                                                              children: [
                                                                Container(
                                                                  height: 20,
                                                                  width: 10,
                                                                  child: const Text(
                                                                      "2",
                                                                      style: TextStyle(
                                                                          color:
                                                                              AppTheme.barcolor)),
                                                                ),
                                                                Container(
                                                                  height: 20,
                                                                  width: 45,
                                                                  child:
                                                                      const Text(
                                                                    "nearbie",
                                                                    style: TextStyle(
                                                                        color: AppTheme
                                                                            .barcolor),
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            height: 40,
                                                            width: 80,
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          30),
                                                              // color: Colors
                                                              //     .amberAccent,
                                                            ),
                                                            child: Row(
                                                              children: [
                                                                Container(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerRight,
                                                                  height: 20,
                                                                  width: 20,
                                                                  // color: Colors
                                                                  //     .pink,
                                                                  child:
                                                                      const Text(
                                                                          "\$"),
                                                                ),
                                                                Container(
                                                                  height: 40,
                                                                  width: 30,
                                                                  // color: Colors
                                                                  //     .pink,
                                                                  child:
                                                                      const Center(
                                                                    child: Text(
                                                                      "9",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              30,
                                                                          fontWeight:
                                                                              FontWeight.w900),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  height: 20,
                                                                  width: 20,
                                                                  // color: Colors
                                                                  //     .pink,
                                                                  child:
                                                                      const Text(
                                                                          "46"),
                                                                ),
                                                              ],
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                        height: 60,
                                        width: 400,
                                        // color: Colors.blueAccent,
                                        child: Container(
                                          height: 33,
                                          width: 300,
                                          // color: Colors.green,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Container(
                                                    height: 50,
                                                    width: 50,
                                                    // color: Colors.red,
                                                    child: Center(
                                                      child: Image.asset(
                                                        "assets/images/Distance-Icon.png",
                                                        width: 50,
                                                        height: 50,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 50,
                                                    width: 50,
                                                    // color: Colors.blue,
                                                    child: const Center(
                                                      child: Text('33.1km',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                    height: 50,
                                                    width: 50,
                                                    // color: Colors.red,
                                                    child: Center(
                                                      child: Image.asset(
                                                        "assets/images/Location-Time-Icon.png",
                                                        width: 50,
                                                        height: 50,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 50,
                                                    width: 50,
                                                    // color: Colors.blue,
                                                    child: const Center(
                                                      child: Text(
                                                        '8 min',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                    height: 50,
                                                    width: 50,
                                                    // color: Colors.red,
                                                    child: Image.asset(
                                                      "assets/images/money-Icon.png",
                                                      width: 50,
                                                      height: 50,
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 50,
                                                    width: 50,
                                                    // color: Colors.green,
                                                    child: const Center(
                                                      child: Text('88.93',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        )),
                                    Container(
                                      height: 70,
                                      width: 400,
                                      // color: Colors.lightBlue,
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 70,
                                            width: 100,
                                            // color: Colors.amber,
                                            child: Image.asset(
                                                "assets/images/Set-timer.png"),
                                          ),
                                          Center(
                                            child: SizedBox(
                                              width: 230,
                                              height: 55,
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      AppTheme.yellow,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                ),
                                                child: const Text(
                                                  'Book Now',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                onPressed: () async {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              const AddFavoritePlacePage()
                                                          //getstart()
                                                          //  NotificationPage()
                                                          ));
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
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
        ));
  }
}
