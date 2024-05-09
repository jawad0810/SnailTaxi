import 'package:flutter/material.dart';
import 'package:snail_taxi_app/onboarding/utils/app_theme.dart';
import 'package:snail_taxi_app/paymentpages/ratedriverThankyou.dart';

// ignore: camel_case_types
class RateDriveMoodPage extends StatefulWidget {
  const RateDriveMoodPage({super.key});

  @override
  State<RateDriveMoodPage> createState() => _RateDriveMoodPageState();
}

// ignore: camel_case_types
class _RateDriveMoodPageState extends State<RateDriveMoodPage> {
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
                  height: 650,
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
                      const SizedBox(
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
                                  height: 130,
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
                                        width: 160,
                                        // color: Colors.amber,
                                        child: Row(
                                          children: [
                                            Container(
                                              child: const Text(
                                                "What's your mood!",
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
                                      height: 30,
                                      width: 250,
                                      // color: Colors.amber,
                                      child: const Text(
                                        "about this trip?",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: AppTheme.barcolor),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 250,
                                width: 300,
                                // color: Colors.red,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 7),
                                    child: Row(
                                      children: [
                                        Column(
                                          children: [
                                            Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  // color: Colors.grey,
                                                ),
                                                height: 60,
                                                width: 60,
                                                child: Image.asset(
                                                    "assets/images/Smilling.png")),
                                            const SizedBox(
                                              width: 15,
                                            ),
                                            Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  // color: Colors.grey,
                                                ),
                                                height: 60,
                                                width: 60,
                                                child: Image.asset(
                                                    "assets/images/Relaxed.png")),
                                            const SizedBox(
                                              width: 15,
                                            ),
                                            Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  // color: Colors.grey,
                                                ),
                                                height: 60,
                                                width: 60,
                                                child: Image.asset(
                                                    "assets/images/Cold.png")),
                                            const SizedBox(
                                              width: 15,
                                            ),
                                            Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  // color: Colors.amber,
                                                ),
                                                height: 60,
                                                width: 60,
                                                child: Image.asset(
                                                    "assets/images/Kissing.png")),
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 30,
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  // color: Colors.grey,
                                                ),
                                                height: 60,
                                                width: 60,
                                                child: Image.asset(
                                                    "assets/images/Angry.png")),
                                            const SizedBox(
                                              width: 15,
                                            ),
                                            Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  // color: Colors.grey,
                                                ),
                                                height: 60,
                                                width: 60,
                                                child: Image.asset(
                                                    "assets/images/Love.png")),
                                            const SizedBox(
                                              width: 15,
                                            ),
                                            Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  // color: Colors.grey,
                                                ),
                                                height: 60,
                                                width: 60,
                                                child: Image.asset(
                                                    "assets/images/Emoji12.png")),
                                            const SizedBox(
                                              width: 15,
                                            ),
                                            Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  // color: Colors.amber,
                                                ),
                                                height: 60,
                                                width: 60,
                                                child: Image.asset(
                                                    "assets/images/Pocker.png")),
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 30,
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  // color: Colors.grey,
                                                ),
                                                height: 60,
                                                width: 60,
                                                child: Image.asset(
                                                    "assets/images/Tierd.png")),
                                            const SizedBox(
                                              width: 15,
                                            ),
                                            Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  // color: Colors.grey,
                                                ),
                                                height: 60,
                                                width: 60,
                                                child: Image.asset(
                                                    "assets/images/Cry1.png")),
                                            const SizedBox(
                                              width: 15,
                                            ),
                                            Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  // color: Colors.grey,
                                                ),
                                                height: 60,
                                                width: 60,
                                                child: Image.asset(
                                                    "assets/images/Relived.png")),
                                            const SizedBox(
                                              width: 15,
                                            ),
                                            Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  // color: Colors.amber,
                                                ),
                                                height: 60,
                                                width: 60,
                                                child: Image.asset(
                                                    "assets/images/Mask.png")),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
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
                                      "Submit",
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
                                            const RateDriverThankYouPage(),
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
