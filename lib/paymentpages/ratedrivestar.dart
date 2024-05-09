import 'package:flutter/material.dart';
import 'package:snail_taxi_app/onboarding/utils/app_theme.dart';
import 'package:snail_taxi_app/paymentpages/ratedriverMood.dart';

// ignore: camel_case_types
class RateDrivePage extends StatefulWidget {
  const RateDrivePage({super.key});

  @override
  State<RateDrivePage> createState() => _RateDrivePageState();
}

// ignore: camel_case_types
class _RateDrivePageState extends State<RateDrivePage> {
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
                          'Rate Driver',
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
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                child: Container(
                  height: 580,
                  width: 400,
                  color: AppTheme.grey,
                  child: Column(
                    children: [
                      Container(
                        height: 50,
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
                      SizedBox(
                        height: 2,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Stack(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Positioned(
                                child: Container(
                                  height: 150,
                                  width: 400,
                                  //color: Colors.green,
                                ),
                              ),
                              Container(
                                height: 90,
                                width: 250,
                                // color: Colors.red,
                                child: Column(
                                  children: [
                                    Container(
                                        height: 30,
                                        width: 100,
                                        // color: Colors.amber,
                                        child: Row(
                                          children: [
                                            Container(
                                              child: const Text(
                                                "Wow",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w900),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 3,
                                            ),
                                            Container(
                                              child: const Text(
                                                "5",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w900),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 3,
                                            ),
                                            Container(
                                              child: const Text(
                                                "star!",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w900),
                                              ),
                                            ),
                                          ],
                                        )),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      height: 50,
                                      width: 250,
                                      // color: Colors.amber,
                                      child: const Text(
                                        "Do you want and additional tip for joe smith",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: AppTheme.barcolor),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 80,
                                width: 300,
                                // color: Colors.red,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 7),
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.grey,
                                        ),
                                        height: 60,
                                        width: 60,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              child: const Text(
                                                "\$",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20),
                                              ),
                                            ),
                                            Container(
                                              child: const Text(
                                                "5",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.grey,
                                        ),
                                        height: 60,
                                        width: 60,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              child: const Text(
                                                "\$",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20),
                                              ),
                                            ),
                                            Container(
                                              child: const Text(
                                                "10",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.grey,
                                        ),
                                        height: 60,
                                        width: 60,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              child: const Text(
                                                "\$",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20),
                                              ),
                                            ),
                                            Container(
                                              child: const Text(
                                                "20",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: AppTheme.yellow,
                                        ),
                                        height: 60,
                                        width: 60,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              child: const Text(
                                                "\$",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20),
                                              ),
                                            ),
                                            Container(
                                              child: const Text(
                                                "30",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20),
                                              ),
                                            ),
                                          ],
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
                                width: 180,
                                height: 60,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.grey,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          child: const Text(
                                            "No, Thanks ",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  onPressed: () async {
                                    // await Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //     builder: (context) =>
                                    //         const sendtippage(),
                                    //   ),
                                    // );
                                  },
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                width: 180,
                                height: 60,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: AppTheme.yellow,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  child: Container(
                                    child: const Text(
                                      "Pay Tip",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17,
                                      ),
                                    ),
                                  ),
                                  onPressed: () async {
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const RateDriveMoodPage(),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            top: 55,
                            left: 160,
                            right: 160,
                            child: Container(
                              decoration: const BoxDecoration(
                                  // color: Colors.blue,
                                  ),
                              height: 60,
                              width: 100,
                              child: Center(
                                  child: Image.asset(
                                      "assets/images/Rectangle1.png")),
                            ),
                          ),
                          Positioned(
                            top: 10,
                            left: 80,
                            right: 80,
                            child: Container(
                              height: 80,
                              width: 240,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                              // color: AppTheme.redcolor,
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              border: Border.all(
                                                  color: Colors.white,
                                                  width: 3),
                                            ),
                                            height: 70,
                                            width: 70,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              child: Image.asset(
                                                "assets/images/piccall.png",
                                                fit: BoxFit.fill,
                                              ),
                                            )),
                                        const SizedBox(
                                          width: 6,
                                        ),
                                        Container(
                                          height: 60,
                                          width: 140,
                                          // color: Colors.green,
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 30,
                                                width: 140,
                                                // color: Colors.amber,
                                                child: const Text(
                                                  "Joe Smith",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                              ),
                                              Container(
                                                height: 30,
                                                width: 140,
                                                // color: Colors.black,
                                                child: const Text(
                                                  "Driver",
                                                  style: TextStyle(
                                                      color: AppTheme.barcolor),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
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
