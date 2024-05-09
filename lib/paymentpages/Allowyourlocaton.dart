import 'package:flutter/material.dart';

import 'package:snail_taxi_app/onboarding/utils/app_theme.dart';
import 'package:snail_taxi_app/paymentpages/Homewhereto.dart';

class AllowYourLocationPage extends StatefulWidget {
  const AllowYourLocationPage({super.key});

  @override
  State<AllowYourLocationPage> createState() => _AllowYourLocationPageState();
}

class _AllowYourLocationPageState extends State<AllowYourLocationPage> {
  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppTheme.barcolor,
      appBar: AppBar(
        toolbarHeight: 0,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 760,
          width: 400,
          child: Stack(children: [
            Positioned(
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
                          height: 760,
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
                                                color: Colors.white, width: 3),
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
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
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
                                height: 380,
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
                                        width: 300,
                                        // color: Colors.amberAccent,
                                        child: const Center(
                                          child: Text(
                                            "Allow your location",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w900,
                                                fontSize: 18),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 80,
                                        width: 300,
                                        // color: Colors.amber,
                                        child: const Text(
                                          "We will need your location location to give you better experience",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                      ),
                                      Container(
                                        height: 80,
                                        width: 300,
                                        // color: Colors.amberAccent,
                                        child: Center(
                                          child: SizedBox(
                                            width: 200,
                                            height: 55,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: AppTheme.grey,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                              ),
                                              child: const Text(
                                                'Not now',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              onPressed: () async {
                                                // Navigator.push(
                                                //     context,
                                                //     MaterialPageRoute(
                                                //         builder: (context) =>
                                                //             const AddFavoritePlacePage()
                                                //         //getstart()
                                                //         //  NotificationPage()
                                                //         ));
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 80,
                                        width: 300,
                                        // color: Colors.amber,
                                        child: Center(
                                          child: SizedBox(
                                            width: 200,
                                            height: 55,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    AppTheme.yellow,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                              ),
                                              child: const Text(
                                                'Ok Sure',
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
                                                            const HomeWheretoPage()
                                                        //getstart()
                                                        //  NotificationPage()
                                                        ));
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
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
