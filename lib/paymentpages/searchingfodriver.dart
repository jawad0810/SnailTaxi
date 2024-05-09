import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:snail_taxi_app/onboarding/utils/app_theme.dart';
import 'package:snail_taxi_app/paymentpages/confirmatoinpage.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

class SearchForDriverpage extends StatefulWidget {
  const SearchForDriverpage({super.key});

  @override
  State<SearchForDriverpage> createState() => _SearchForDriverpageState();
}

class _SearchForDriverpageState extends State<SearchForDriverpage> {
  bool isFinished = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              child: Container(
            color: AppTheme.grey,
            height: 800,
            width: 400,
          )),
          // Circle image
          Positioned(
            top: 300,
            left: 30,
            right: 30,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              height: 350,
              width: 350,
              child: Center(child: Image.asset("assets/images/Circles.png")),
            ),
          ),
          // car image
          Positioned(
            top: 450,
            left: 170,
            right: 170,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              // height: 50,
              // width: 50,
              child: Center(child: Image.asset("assets/images/car_top.png")),
            ),
          ),
          // clinet1 image
          Positioned(
            top: 405,
            left: 200,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              height: 50,
              width: 50,
              child: Container(
                  decoration: BoxDecoration(
                    // color: AppTheme.redcolor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  height: 70,
                  width: 70,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/images/Driver.png",
                      fit: BoxFit.fill,
                    ),
                  )),
            ),
          ),
          // client2 image
          Positioned(
            top: 540,
            left: 150,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              height: 50,
              width: 50,
              child: Container(
                  decoration: BoxDecoration(
                    // color: AppTheme.redcolor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  height: 70,
                  width: 70,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/images/Driver.png",
                      fit: BoxFit.fill,
                    ),
                  )),
            ),
          ),
          // client3 image
          Positioned(
            top: 550,
            right: 60,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              height: 50,
              width: 50,
              child: Container(
                  decoration: BoxDecoration(
                    // color: AppTheme.redcolor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  height: 70,
                  width: 70,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/images/Driver1.png",
                      fit: BoxFit.fill,
                    ),
                  )),
            ),
          ),

          //  Image and name
          Positioned(
            top: 100,
            left: 80,
            right: 80,
            child: Container(
              height: 150,
              width: 240,
              decoration: BoxDecoration(
                // color: Colors.transparent,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 140,
                    width: 200,
                    //color: Colors.green,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              // color: AppTheme.redcolor,
                              borderRadius: BorderRadius.circular(10),
                              // border: Border.all(color: Colors.white, width: 3),
                            ),
                            height: 50,
                            width: 50,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                "assets/images/Logo1.png",
                                fit: BoxFit.fill,
                              ),
                            )),
                        Container(
                          alignment: Alignment.center,
                          height: 30,
                          width: 150,
                          // color: Colors.amber,
                          child: const Text(
                            "Searching Ride",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w900),
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 180,
                          // color: Colors.red,
                          child: const Center(
                            child: Text(
                              "It may take some times",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          // rectangle image
          Positioned(
            top: 290,
            left: 160,
            right: 160,
            child: Container(
              decoration: const BoxDecoration(
                  // color: Colors.blue,
                  ),
              height: 60,
              width: 100,
              child: Center(child: Image.asset("assets/images/Rectangle1.png")),
            ),
          ),
          //profile Image and name
          Positioned(
            top: 250,
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
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: Colors.white, width: 3),
                            ),
                            height: 70,
                            width: 70,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
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
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 30,
                                    width: 100,
                                    // color: Colors.black,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          child: const Text(
                                            "Driver",
                                            style: TextStyle(
                                                color: AppTheme.barcolor),
                                          ),
                                        ),
                                        Container(
                                          child: const Text(
                                            "200",
                                            style: TextStyle(
                                                color: AppTheme.barcolor),
                                          ),
                                        ),
                                        Container(
                                          child: const Text(
                                            "m",
                                            style: TextStyle(
                                                color: AppTheme.barcolor),
                                          ),
                                        ),
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
                ),
              ),
            ),
          ),

          // back image and page name
          Positioned(
            top: 50,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        // color: Colors.red,
                        child: Image.asset(
                          "assets/images/Back.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Container(
                      height: 25,
                      width: 200,
                      // color: Colors.redAccent,
                      // alignment: Alignment.center,
                      child: const Text(
                        "Searching for Driver",
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
          )

          // Slide  to cancle
          ,
          Positioned(
              bottom: 50,
              right: 90,
              left: 90,
              child: SwipeableButtonView(
                onWaitingProcess: () {
                  Future.delayed(
                      const Duration(seconds: 2),
                      () => setState(
                            () => isFinished = true,
                          ));
                },
                buttonText: "    > > >Slide To Cancle",
                buttonColor: Colors.black,
                isFinished: isFinished,
                onFinish: () async {
                  await Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade,
                          child: const ConfirmationPage()));
                  setState(() {
                    isFinished = false;
                  });
                },
                activeColor: AppTheme.barcolor,
                buttonWidget: Image.asset("assets/images/Cancell.png"),
              )
              // Container(
              //     decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(20),
              //         color: Colors.redAccent),
              //     height: 50,
              //     width: 220,
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         Container(
              //           alignment: Alignment.center,
              //           height: 40,
              //           width: 40,
              //           color: Colors.green,
              //           child: Image.asset("assets/images/Cancell.png"),
              //         ),
              //         Container(
              //           alignment: Alignment.center,
              //           height: 40,
              //           width: 150,
              //           color: Colors.green,
              //           child: Text(">> Slide To Cancel"),
              //         )
              //       ],
              //     )
              //     ),
              ),
        ],
      ),
    );
  }
}
