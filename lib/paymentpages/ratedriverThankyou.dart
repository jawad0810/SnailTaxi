import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:snail_taxi_app/onboarding/utils/app_theme.dart';
import 'package:snail_taxi_app/paymentpages/driveriscoming.dart';

// ignore: camel_case_types
class RateDriverThankYouPage extends StatefulWidget {
  const RateDriverThankYouPage({super.key});

  @override
  State<RateDriverThankYouPage> createState() => _RateDriverThankYouPageState();
}

// ignore: camel_case_types
class _RateDriverThankYouPageState extends State<RateDriverThankYouPage> {
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
                                        width: 140,
                                        // color: Colors.amber,
                                        child: Container(
                                          child: const Center(
                                            child: Text(
                                              "Thank you!",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w900),
                                            ),
                                          ),
                                        )),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      height: 25,
                                      width: 250,
                                      // color: Colors.amber,
                                      child: const Text(
                                        "Please rate your trip?",
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
                                height: 30,
                                width: 170,
                                // color: Colors.red,
                                child: RatingBar.builder(
                                    initialRating: 0,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 25,
                                    itemPadding: const EdgeInsets.symmetric(
                                        horizontal: 4),
                                    itemBuilder: (context, _) => const Icon(
                                          Icons.star,
                                          color: AppTheme.yellow,
                                        ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    }),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 150,
                                width: 300,
                                decoration: BoxDecoration(
                                  // color: AppTheme.redcolor,
                                  borderRadius: BorderRadius.circular(20),
                                  border:
                                      Border.all(color: Colors.grey, width: 3),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, left: 20, right: 20),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                              height: 30,
                                              width: 140,
                                              // color: Colors.amber,
                                              child: Container(
                                                child: const Text(
                                                  "Hey Joe!",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                              )),
                                        ],
                                      ),
                                      Container(
                                        height: 100,
                                        width: 280,
                                        // color: Colors.blue,
                                        child: const TextField(
                                          decoration: InputDecoration(
                                            hintText:
                                                'Write your message here ...',
                                            labelStyle: TextStyle(
                                                color: AppTheme.barcolor),
                                            border: InputBorder
                                                .none, // Remove the border
                                          ),
                                          maxLines: 10,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                  height: 65,
                                  width: 300,
                                  // color: Colors.red,
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 20,
                                        width: 50,
                                        child: AbsorbPointer(
                                          absorbing:
                                              false, // This allows the Switch to receive touch events
                                          child: Switch(
                                            value: isSwitched,
                                            onChanged: (newValue) {
                                              setState(() {
                                                isSwitched = newValue;
                                              });
                                            },
                                            activeTrackColor: AppTheme.yellow,
                                            activeColor: Colors.white,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        height: 60,
                                        width: 170,
                                        // color: Colors.greenAccent,
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 30,
                                              width: 150,
                                              // color: Colors.amber,
                                              child: const Text(
                                                  "Share your message"),
                                            ),
                                            // SizedBox(
                                            //   height: 5,
                                            // ),
                                            Container(
                                              height: 30,
                                              width: 170,
                                              // color: Colors.red,
                                              child: const Text(
                                                  "with other taxi passenger."),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        height: 35,
                                        width: 60,
                                        // color: Colors.amber,
                                        child: Stack(children: [
                                          Positioned(
                                            left: 0,
                                            top: 4,
                                            child: Container(
                                                decoration: BoxDecoration(
                                                  // color: AppTheme.redcolor,
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  border: Border.all(
                                                      color: Colors.white,
                                                      width: 3),
                                                ),
                                                height: 25,
                                                width: 30,
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  child: Image.asset(
                                                    "assets/images/piccall.png",
                                                    fit: BoxFit.fill,
                                                  ),
                                                )),
                                          ),
                                          Positioned(
                                            left: 12,
                                            top: 4,
                                            child: Container(
                                                decoration: BoxDecoration(
                                                  // color: AppTheme.redcolor,
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  border: Border.all(
                                                      color: Colors.white,
                                                      width: 3),
                                                ),
                                                height: 25,
                                                width: 30,
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  child: Image.asset(
                                                    "assets/images/piccall.png",
                                                    fit: BoxFit.fill,
                                                  ),
                                                )),
                                          ),
                                          Positioned(
                                            left: 20,
                                            top: 4,
                                            child: Container(
                                                decoration: BoxDecoration(
                                                  // color: AppTheme.redcolor,
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  border: Border.all(
                                                      color: Colors.white,
                                                      width: 3),
                                                ),
                                                height: 25,
                                                width: 30,
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  child: Image.asset(
                                                    "assets/images/piccall.png",
                                                    fit: BoxFit.fill,
                                                  ),
                                                )),
                                          ),
                                          Positioned(
                                            left: 30,
                                            top: 4,
                                            child: Container(
                                                height: 25,
                                                width: 30,
                                                child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    child: Image.asset(
                                                      "assets/images/avatar.png",
                                                      fit: BoxFit.cover,
                                                    ))),
                                          ),
                                        ]),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                    ],
                                  )),
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
                                      "Next",
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
                                            const DriverIsComingPage(),
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
