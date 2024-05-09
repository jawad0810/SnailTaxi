import 'package:flutter/material.dart';

import 'package:snail_taxi_app/onboarding/utils/app_theme.dart';
import 'package:snail_taxi_app/paymentpages/searchingfodriver.dart';

class HomeWheretoPage extends StatefulWidget {
  const HomeWheretoPage({super.key});

  @override
  State<HomeWheretoPage> createState() => _HomeWheretoPageState();
}

class _HomeWheretoPageState extends State<HomeWheretoPage> {
  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppTheme.barcolor,
      // appBar: AppBar(
      //   toolbarHeight: 0,
      //   automaticallyImplyLeading: false,
      // ),
      body: SingleChildScrollView(
        child: Container(
          height: 850,
          width: 400,
          child: Stack(children: [
            Positioned(
                bottom: 0,
                // right: 0,
                // top: 0,
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 850,
                              width: 400,
                              color: AppTheme.barcolor,
                              child: Stack(children: [
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  top: 80,
                                  child: Container(
                                    height: 80,
                                    width: 400,
                                    // color: Colors.green,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                              decoration: BoxDecoration(
                                                // color: AppTheme.redcolor,
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                border: Border.all(
                                                    color: Colors.white,
                                                    width: 3),
                                              ),
                                              height: 60,
                                              width: 60,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                child: Image.asset(
                                                  "assets/images/piccall.png",
                                                  fit: BoxFit.fill,
                                                ),
                                              )),
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: Colors.white,
                                            ),
                                            height: 60,
                                            width: 150,
                                            alignment: Alignment.center,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    height: 40,
                                                    width: 40,
                                                    // color: Colors.redAccent,
                                                    child: Image.asset(
                                                        "assets/images/Wallet-Icon.png"),
                                                  ),
                                                  Container(
                                                    height: 40,
                                                    width: 40,
                                                    // color: Colors.redAccent,
                                                    child: Row(
                                                      children: [
                                                        Container(
                                                          child: const Text(
                                                            "\$",
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ),
                                                        Container(
                                                          child: const Text(
                                                            "29",
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 40,
                                                    width: 40,
                                                    // color: Colors.redAccent,
                                                    child: Image.asset(
                                                        "assets/images/Add.png"),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 60,
                                            width: 60,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: Colors.white),
                                            child: Image.asset(
                                                "assets/images/Search-Icon.png"),
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
                                  child: Container(
                                    height: 250,
                                    width: 400,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(40),
                                        topRight: Radius.circular(40),
                                      ),
                                      color: Colors.white,
                                    ),
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      height: 145,
                                      // width: 350,
                                      // color: Colors.greenAccent,
                                      child: Column(
                                        children: [
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            child: Container(
                                              height: 8,
                                              width: 60,
                                              decoration: BoxDecoration(
                                                color: Colors.grey,
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 70,
                                            width: 350,
                                            // color: Colors.amberAccent,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Container(
                                                  alignment: Alignment.topLeft,
                                                  height: 40,
                                                  width: 150,
                                                  // color: Colors.green,
                                                  child: const Text(
                                                    "Where to ?",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w900,
                                                        fontSize: 16),
                                                  ),
                                                ),
                                                Container(
                                                  alignment: Alignment.topRight,
                                                  height: 40,
                                                  width: 150,
                                                  // color: Colors.green,
                                                  child: const Text(
                                                    "Customize",
                                                    style: TextStyle(
                                                        color:
                                                            AppTheme.barcolor,
                                                        fontSize: 16),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 150,
                                            width: 400,
                                            // color: Colors.amber,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  child: PageView.builder(
                                                    padEnds: false,
                                                    pageSnapping: false,
                                                    physics:
                                                        BouncingScrollPhysics(),
                                                    reverse: true,
                                                    itemBuilder:
                                                        (context, index) {
                                                      // Define a list of four containers
                                                      List<Widget> containers =
                                                          [
                                                        Container(
                                                          // color: Colors.red,
                                                          height: 100,
                                                          width: 100,
                                                          child: Stack(
                                                            children: [
                                                              Positioned(
                                                                  bottom: 30,
                                                                  left: 5,
                                                                  right: 5,
                                                                  child:
                                                                      Container(
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              25),
                                                                      color: AppTheme
                                                                          .grey,
                                                                    ),
                                                                    height: 80,
                                                                    width: 100,
                                                                    child:
                                                                        Column(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Container(
                                                                          alignment:
                                                                              Alignment.center,
                                                                          height:
                                                                              20,
                                                                          width:
                                                                              50,
                                                                          child:
                                                                              const Text(
                                                                            "Work",
                                                                            style:
                                                                                TextStyle(fontWeight: FontWeight.w900, fontSize: 16),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                            height:
                                                                                15,
                                                                            width:
                                                                                100,
                                                                            child:
                                                                                Row(
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              children: [
                                                                                Container(
                                                                                  child: const Text(
                                                                                    "14",
                                                                                    style: TextStyle(color: AppTheme.barcolor),
                                                                                  ),
                                                                                ),
                                                                                Container(
                                                                                  child: const Text(
                                                                                    "km",
                                                                                    style: TextStyle(color: AppTheme.barcolor),
                                                                                  ),
                                                                                ),
                                                                                Container(
                                                                                  child: const Text("15", style: TextStyle(color: AppTheme.barcolor)),
                                                                                ),
                                                                                Container(
                                                                                  child: const Text(
                                                                                    "min",
                                                                                    style: TextStyle(color: AppTheme.barcolor),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ))
                                                                      ],
                                                                    ),
                                                                  )),
                                                              Positioned(
                                                                bottom: 90,
                                                                left: 50,
                                                                right: 50,
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10),
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                  height: 40,
                                                                  width: 40,
                                                                  child: Image
                                                                      .asset(
                                                                          "assets/images/Work-Icon.png"),
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          // color: Colors.blueGrey,
                                                          height: 100,
                                                          width: 100,
                                                          child: Stack(
                                                            children: [
                                                              Positioned(
                                                                  bottom: 30,
                                                                  left: 5,
                                                                  right: 5,
                                                                  child:
                                                                      Container(
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              25),
                                                                      color: AppTheme
                                                                          .grey,
                                                                    ),
                                                                    height: 80,
                                                                    width: 100,
                                                                    child:
                                                                        Column(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Container(
                                                                          alignment:
                                                                              Alignment.center,
                                                                          height:
                                                                              20,
                                                                          width:
                                                                              50,
                                                                          child:
                                                                              const Text(
                                                                            "Home",
                                                                            style:
                                                                                TextStyle(fontWeight: FontWeight.w900, fontSize: 16),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                            height:
                                                                                15,
                                                                            width:
                                                                                100,
                                                                            child:
                                                                                Row(
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              children: [
                                                                                Container(
                                                                                  child: const Text(
                                                                                    "24",
                                                                                    style: TextStyle(color: AppTheme.barcolor),
                                                                                  ),
                                                                                ),
                                                                                Container(
                                                                                  child: const Text(
                                                                                    "km",
                                                                                    style: TextStyle(color: AppTheme.barcolor),
                                                                                  ),
                                                                                ),
                                                                                Container(
                                                                                  child: const Text("39", style: TextStyle(color: AppTheme.barcolor)),
                                                                                ),
                                                                                Container(
                                                                                  child: const Text(
                                                                                    "min",
                                                                                    style: TextStyle(color: AppTheme.barcolor),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ))
                                                                      ],
                                                                    ),
                                                                  )),
                                                              Positioned(
                                                                  bottom: 90,
                                                                  left: 50,
                                                                  right: 50,
                                                                  child:
                                                                      Container(
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10),
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                    height: 40,
                                                                    width: 40,
                                                                    child: Image
                                                                        .asset(
                                                                            "assets/images/Home-Icon.png"),
                                                                  ))
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          // color: Colors.green,
                                                          height: 100,
                                                          width: 100,
                                                          child: Stack(
                                                            children: [
                                                              Positioned(
                                                                  bottom: 30,
                                                                  left: 5,
                                                                  right: 5,
                                                                  child:
                                                                      Container(
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              25),
                                                                      color: AppTheme
                                                                          .grey,
                                                                    ),
                                                                    height: 80,
                                                                    width: 100,
                                                                    child:
                                                                        Column(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Container(
                                                                          alignment:
                                                                              Alignment.center,
                                                                          height:
                                                                              20,
                                                                          width:
                                                                              80,
                                                                          child:
                                                                              const Text(
                                                                            "New trip",
                                                                            style:
                                                                                TextStyle(fontWeight: FontWeight.w900, fontSize: 16),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                            height:
                                                                                15,
                                                                            width:
                                                                                100,
                                                                            child:
                                                                                const Text(
                                                                              "top for location",
                                                                              style: TextStyle(color: AppTheme.barcolor),
                                                                            ))
                                                                      ],
                                                                    ),
                                                                  )),
                                                              Positioned(
                                                                bottom: 90,
                                                                left: 50,
                                                                right: 50,
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10),
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                  height: 40,
                                                                  width: 40,
                                                                  child: Image
                                                                      .asset(
                                                                          "assets/images/Location-Icon03.png"),
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        )
                                                      ];

                                                      // Ensure that index is within the range of containers list
                                                      index = index %
                                                          containers.length;

                                                      return Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10),
                                                        child:
                                                            containers[index],
                                                      );
                                                    },
                                                    itemCount:
                                                        3, // Set itemCount to 4 for four containers
                                                    controller: PageController(
                                                        viewportFraction: 0.4),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                    bottom: 280,
                                    right: 30,
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const SearchForDriverpage()));
                                      },
                                      child: Container(
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
                                    ))
                              ]),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
          ]),
        ),
      ),
    );
  }
}
