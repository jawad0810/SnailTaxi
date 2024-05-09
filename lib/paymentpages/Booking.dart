import 'package:flutter/material.dart';
import 'package:snail_taxi_app/Menu_page/Account_pages/edit_account.dart';
import 'package:snail_taxi_app/Menu_page/Account_pages/select_account.dart';
import 'package:snail_taxi_app/Menu_page/chatpages/chat-voice.dart';
import 'package:snail_taxi_app/homeMenu/Notification.dart';

import 'package:snail_taxi_app/onboarding/utils/app_theme.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:snail_taxi_app/paymentpages/Allowyourlocaton.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
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
                right: 0,
                top: 0,
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 700,
                              width: 400,
                              color: AppTheme.barcolor,
                              child: Stack(children: [
                                // Positioned(
                                //   left: 0,
                                //   right: 0,
                                //   child: Container(
                                //     height: 130,
                                //     width: 200,
                                //     //color: Colors.amber,
                                //     child: Padding(
                                //       padding: const EdgeInsets.all(30),
                                //       child: Row(
                                //         children: [
                                //           GestureDetector(
                                //             onTap: () {
                                //               Navigator.pop(context);
                                //             },
                                //             child: Container(
                                //               height: 40,
                                //               width: 40,
                                //               child: Image.asset(
                                //                 "assets/images/Back.png",
                                //                 fit: BoxFit.fill,
                                //               ),
                                //             ),
                                //           ),
                                //           const SizedBox(
                                //             width: 80,
                                //           ),
                                //           Container(
                                //             alignment: Alignment.center,
                                //             child: const Text(
                                //               'Booking',
                                //               style: TextStyle(
                                //                 color: Colors.black,
                                //                 fontSize: 18,
                                //               ),
                                //             ),
                                //           ),
                                //         ],
                                //       ),
                                //     ),
                                //   ),
                                // ),
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  top: 80,
                                  child: Container(
                                    height: 80,
                                    width: 200,
                                    color: Colors.transparent,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
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
                                                  GestureDetector(
                                                    onTap: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  const AllowYourLocationPage()
                                                              //getstart()
                                                              //  NotificationPage()
                                                              ));
                                                    },
                                                    child: Container(
                                                      height: 40,
                                                      width: 40,
                                                      // color: Colors.redAccent,
                                                      child: Image.asset(
                                                          "assets/images/Add.png"),
                                                    ),
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
                                  bottom: 60,
                                  left: 20,
                                  right: 20,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                    ),
                                    child: Container(
                                      height: 230,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
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
                                              height: 8,
                                              width: 60,
                                              decoration: BoxDecoration(
                                                color: Colors.grey,
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 40,
                                            ),
                                            Container(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                      height: 145,
                                                      width: 50,
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
                                                    width: 280,
                                                    // color: Colors.pink,
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                          height: 23,
                                                          width: 300,
                                                          // color: Colors.blue,
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
                                                              // color: Colors.grey,
                                                              child:
                                                                  const Center(
                                                                child: Divider(
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
                                                                        builder:
                                                                            (context) =>
                                                                                const BookingPage()));
                                                              },
                                                              child: Container(
                                                                height: 50,
                                                                width: 50,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              30),
                                                                  color:
                                                                      AppTheme
                                                                          .grey,
                                                                ),
                                                                child:
                                                                    const Center(
                                                                  child: Icon(
                                                                    Icons
                                                                        .local_taxi,
                                                                    color: Colors
                                                                        .grey,
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
                                                                // color: AppTheme.greyColor,
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
                                                            width: 350,
                                                            // color: Colors.blue,
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
                                          ],
                                        ),
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
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                height: 100,
                width: 400,
                child: Stack(
                  children: [
                    CustomPaint(
                      size: Size(400, 230),
                      painter: RPSCustomPainter1(),
                    ),
                    Positioned(
                      left: 170,
                      top: 20,
                      child: GestureDetector(
                        onTap: () {
                          Fluttertoast.showToast(msg: "Call end");
                        },
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: AppTheme.yellow),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.drive_eta_outlined),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        // left: 75,
                        top: 25,
                        child: Container(
                          width: size.width,
                          height: 90,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              IconButton(
                                onPressed: () async {
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const NotificationsPage(), // Remove 'const' from here
                                    ),
                                  );
                                },
                                icon: const Icon(Icons.home),
                              ),
                              IconButton(
                                onPressed: () async {
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const SelectAccountPage(), // Remove 'const' from here
                                    ),
                                  );
                                },
                                icon: const Icon(
                                  Icons.lock_clock_outlined,
                                ),
                              ),
                              const SizedBox(
                                width: 60,
                              ),
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Callpage1()),
                                  );
                                },
                                icon: const Icon(Icons.message),
                              ),
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            EditAccountPage()),
                                  );
                                },
                                icon: const Icon(
                                  Icons.settings,
                                ),
                              ),
                            ],
                          ),
                        ))
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

//============================================
class RPSCustomPainter1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0016667, size.height * 0.5000000);
    path_0.lineTo(size.width * 0.2516667, size.height * 0.5033333);
    path_0.quadraticBezierTo(size.width * 0.2835417, size.height * 0.5008333,
        size.width * 0.2941667, size.height * 0.5000000);
    path_0.cubicTo(
        size.width * 0.3298833,
        size.height * 0.5022667,
        size.width * 0.4180917,
        size.height * -0.0012333,
        size.width * 0.4991083,
        size.height * 0.0342333);
    path_0.cubicTo(
        size.width * 0.5836333,
        size.height * -0.0081333,
        size.width * 0.6646250,
        size.height * 0.4924667,
        size.width * 0.7072000,
        size.height * 0.4982667);
    path_0.quadraticBezierTo(size.width * 0.7239917, size.height * 0.5071000,
        size.width * 0.7516667, size.height * 0.5000000);
    path_0.lineTo(size.width * 1.0016667, size.height * 0.4966667);
    path_0.lineTo(size.width * 1.0016667, size.height);
    path_0.lineTo(size.width * 0.0016667, size.height);
    path_0.lineTo(size.width * 0.0016667, size.height * 0.5000000);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paint_stroke_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
