import 'package:flutter/material.dart';
import 'package:snail_taxi_app/Menu_page/Account_pages/edit_account.dart';
import 'package:snail_taxi_app/Menu_page/Account_pages/select_account.dart';
import 'package:snail_taxi_app/Menu_page/chatpages/chat-voice.dart';

import 'package:snail_taxi_app/homeMenu/Notification.dart';
import 'package:snail_taxi_app/homeMenu/driverDetail.dart';

import 'package:snail_taxi_app/onboarding/utils/app_theme.dart';

import 'package:fluttertoast/fluttertoast.dart';

class MyPromotionsPage extends StatefulWidget {
  const MyPromotionsPage({super.key});

  @override
  State<MyPromotionsPage> createState() => _MyPromotionsPageState();
}

class _MyPromotionsPageState extends State<MyPromotionsPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppTheme.grey,
      appBar: AppBar(
        toolbarHeight: 0,
        automaticallyImplyLeading: false,
      ),
      body: Stack(children: [
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
                          color: AppTheme.grey,
                          child: Stack(children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(40),
                                bottomRight: Radius.circular(40),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 180,
                                    width: 400,
                                    // color: Colors.blue,
                                    child: Image.asset(
                                      "assets/images/Background.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 150,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Column(
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        height: 60,
                                        width: 360,
                                        child: Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 30,
                                                width: 30,
                                                child: Image.asset(
                                                    "assets/images/Search-Icon.png"),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Container(
                                                height: 40,
                                                width: 240,
                                                // color: Colors.red,
                                                child: const TextField(
                                                  decoration: InputDecoration(
                                                    hintText:
                                                        'Enter your promotion cod',
                                                    hintStyle: TextStyle(
                                                        color:
                                                            AppTheme.barcolor),
                                                    border: InputBorder.none,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            const DriverDetailsPage()),
                                                  );
                                                },
                                                child: Container(
                                                  height: 40,
                                                  width: 40,
                                                  child: Image.asset(
                                                      "assets/images/Search-Icon1.png"),
                                                ),
                                              )
                                            ],
                                          ),
                                        )),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      height: 30,
                                      width: 330,
                                      // color: Colors.amberAccent,
                                      child: const Text(
                                        "Today",
                                        style: TextStyle(
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                    Container(
                                        height: 500,
                                        width: 360,
                                        color: Colors.transparent,
                                        child: SingleChildScrollView(
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 125,
                                                width: 360,
                                                //color: Colors.black,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20), // Adjust the radius as needed
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(20),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        height: 50,
                                                        width: 50,
                                                        // color: Colors.red,
                                                        child: Image.asset(
                                                            "assets/images/Coupon-Icon.png"),
                                                      ),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      Container(
                                                        height: 100,
                                                        width: 210,
                                                        // color: Colors.red,
                                                        child: Column(
                                                          children: [
                                                            Container(
                                                              height: 40,
                                                              width: 200,
                                                              // color:
                                                              //     Colors.amber,
                                                              child: const Text(
                                                                "Save up tp 30%  off the baserate of week rental",
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        16),
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                              height: 5,
                                                            ),
                                                            const SizedBox(
                                                              height: 10,
                                                            ),
                                                            Container(
                                                              height: 20,
                                                              width: 200,
                                                              // color:
                                                              //     Colors.amber,
                                                              child: Row(
                                                                children: [
                                                                  Container(
                                                                    child:
                                                                        const Text(
                                                                      "Valid untill",
                                                                      style: TextStyle(
                                                                          color:
                                                                              AppTheme.barcolor),
                                                                    ),
                                                                  ),
                                                                  const SizedBox(
                                                                    width: 5,
                                                                  ),
                                                                  Container(
                                                                    child:
                                                                        const Text(
                                                                      "09/25/2019",
                                                                      style: TextStyle(
                                                                          color:
                                                                              AppTheme.barcolor),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                              height: 5,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        alignment:
                                                            Alignment.topRight,
                                                        height: 20,
                                                        width: 50,
                                                        // color: Colors.red,
                                                        child: Image.asset(
                                                            "assets/images/Right.png"),
                                                      ),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              Container(
                                                height: 125,
                                                width: 360,
                                                //color: Colors.black,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20), // Adjust the radius as needed
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(20),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        height: 50,
                                                        width: 50,
                                                        // color: Colors.red,
                                                        child: Image.asset(
                                                            "assets/images/Coupon-Icon.png"),
                                                      ),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      Container(
                                                        height: 100,
                                                        width: 210,
                                                        // color: Colors.red,
                                                        child: Column(
                                                          children: [
                                                            Container(
                                                              height: 40,
                                                              width: 200,
                                                              // color:
                                                              //     Colors.amber,
                                                              child: const Text(
                                                                "Save up tp 30%  off the baserate of week rental",
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        16),
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                              height: 5,
                                                            ),
                                                            const SizedBox(
                                                              height: 10,
                                                            ),
                                                            Container(
                                                              height: 20,
                                                              width: 200,
                                                              // color:
                                                              //     Colors.amber,
                                                              child: Row(
                                                                children: [
                                                                  Container(
                                                                    child:
                                                                        const Text(
                                                                      "Valid untill",
                                                                      style: TextStyle(
                                                                          color:
                                                                              AppTheme.barcolor),
                                                                    ),
                                                                  ),
                                                                  const SizedBox(
                                                                    width: 5,
                                                                  ),
                                                                  Container(
                                                                    child:
                                                                        const Text(
                                                                      "09/25/2019",
                                                                      style: TextStyle(
                                                                          color:
                                                                              AppTheme.barcolor),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                              height: 5,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        alignment:
                                                            Alignment.topRight,
                                                        height: 20,
                                                        width: 50,
                                                        // color: Colors.red,
                                                        child: Image.asset(
                                                            "assets/images/Right.png"),
                                                      ),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              Container(
                                                height: 125,
                                                width: 360,
                                                //color: Colors.black,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20), // Adjust the radius as needed
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(20),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        height: 50,
                                                        width: 50,
                                                        // color: Colors.red,
                                                        child: Image.asset(
                                                            "assets/images/Coupon-Icon.png"),
                                                      ),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      Container(
                                                        height: 100,
                                                        width: 210,
                                                        // color: Colors.red,
                                                        child: Column(
                                                          children: [
                                                            Container(
                                                              height: 40,
                                                              width: 200,
                                                              // color:
                                                              //     Colors.amber,
                                                              child: const Text(
                                                                "Save up tp 30%  off the baserate of week rental",
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        16),
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                              height: 5,
                                                            ),
                                                            const SizedBox(
                                                              height: 10,
                                                            ),
                                                            Container(
                                                              height: 20,
                                                              width: 200,
                                                              // color:
                                                              //     Colors.amber,
                                                              child: Row(
                                                                children: [
                                                                  Container(
                                                                    child:
                                                                        const Text(
                                                                      "Valid untill",
                                                                      style: TextStyle(
                                                                          color:
                                                                              AppTheme.barcolor),
                                                                    ),
                                                                  ),
                                                                  const SizedBox(
                                                                    width: 5,
                                                                  ),
                                                                  Container(
                                                                    child:
                                                                        const Text(
                                                                      "09/25/2019",
                                                                      style: TextStyle(
                                                                          color:
                                                                              AppTheme.barcolor),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                              height: 5,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        alignment:
                                                            Alignment.topRight,
                                                        height: 20,
                                                        width: 50,
                                                        // color: Colors.red,
                                                        child: Image.asset(
                                                            "assets/images/Right.png"),
                                                      ),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              Container(
                                                height: 125,
                                                width: 360,
                                                //color: Colors.black,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20), // Adjust the radius as needed
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(20),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        height: 50,
                                                        width: 50,
                                                        // color: Colors.red,
                                                        child: Image.asset(
                                                            "assets/images/Coupon-Icon.png"),
                                                      ),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      Container(
                                                        height: 100,
                                                        width: 210,
                                                        // color: Colors.red,
                                                        child: Column(
                                                          children: [
                                                            Container(
                                                              height: 40,
                                                              width: 200,
                                                              // color:
                                                              //     Colors.amber,
                                                              child: const Text(
                                                                "Save up tp 30%  off the baserate of week rental",
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        16),
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                              height: 5,
                                                            ),
                                                            const SizedBox(
                                                              height: 10,
                                                            ),
                                                            Container(
                                                              height: 20,
                                                              width: 200,
                                                              // color:
                                                              //     Colors.amber,
                                                              child: Row(
                                                                children: [
                                                                  Container(
                                                                    child:
                                                                        const Text(
                                                                      "Valid untill",
                                                                      style: TextStyle(
                                                                          color:
                                                                              AppTheme.barcolor),
                                                                    ),
                                                                  ),
                                                                  const SizedBox(
                                                                    width: 5,
                                                                  ),
                                                                  Container(
                                                                    child:
                                                                        const Text(
                                                                      "09/25/2019",
                                                                      style: TextStyle(
                                                                          color:
                                                                              AppTheme.barcolor),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                              height: 5,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        alignment:
                                                            Alignment.topRight,
                                                        height: 20,
                                                        width: 50,
                                                        // color: Colors.red,
                                                        child: Image.asset(
                                                            "assets/images/Right.png"),
                                                      ),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              Container(
                                                height: 125,
                                                width: 360,
                                                //color: Colors.black,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20), // Adjust the radius as needed
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(20),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        height: 50,
                                                        width: 50,
                                                        // color: Colors.red,
                                                        child: Image.asset(
                                                            "assets/images/Coupon-Icon.png"),
                                                      ),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      Container(
                                                        height: 100,
                                                        width: 210,
                                                        // color: Colors.red,
                                                        child: Column(
                                                          children: [
                                                            Container(
                                                              height: 40,
                                                              width: 200,
                                                              // color:
                                                              //     Colors.amber,
                                                              child: const Text(
                                                                "Save up tp 30%  off the baserate of week rental",
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        16),
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                              height: 5,
                                                            ),
                                                            const SizedBox(
                                                              height: 10,
                                                            ),
                                                            Container(
                                                              height: 20,
                                                              width: 200,
                                                              // color:
                                                              //     Colors.amber,
                                                              child: Row(
                                                                children: [
                                                                  Container(
                                                                    child:
                                                                        const Text(
                                                                      "Valid untill",
                                                                      style: TextStyle(
                                                                          color:
                                                                              AppTheme.barcolor),
                                                                    ),
                                                                  ),
                                                                  const SizedBox(
                                                                    width: 5,
                                                                  ),
                                                                  Container(
                                                                    child:
                                                                        const Text(
                                                                      "09/25/2019",
                                                                      style: TextStyle(
                                                                          color:
                                                                              AppTheme.barcolor),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                              height: 5,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        alignment:
                                                            Alignment.topRight,
                                                        height: 20,
                                                        width: 50,
                                                        // color: Colors.red,
                                                        child: Image.asset(
                                                            "assets/images/Right.png"),
                                                      ),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              const SizedBox(
                                                height: 100,
                                              ),
                                            ],
                                          ),
                                        ))
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              right: 0,
                              child: Container(
                                height: 130,
                                width: 200,
                                //color: Colors.amber,
                                child: Padding(
                                  padding: const EdgeInsets.all(30),
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
                                          'My Promotions',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
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
                                      NotificationsPage(), // Remove 'const' from here
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
                                    builder: (context) => EditAccountPage()),
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

class CustomWidget extends StatelessWidget {
  final String image1;
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String text5;
  final String image2;
  final String image3;

  const CustomWidget({
    Key? key,
    required this.image1,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    required this.text5,
    required this.image2,
    required this.image3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 210,
      // color: Colors.red,
      child: Column(
        children: [
          Container(
            height: 20,
            width: 200,
            // color: Colors.amber,
            child: Text(
              text1,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            height: 22,
            width: 200,
            // color: Colors.amber,
            child: Text(
              text2,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 20,
            width: 200,
            // color: Colors.amber,
            child: Row(
              children: [
                Container(
                  height: 20,
                  width: 20,
                  // color: Colors.green,
                  child: Image.asset(image1),
                ),
                Container(
                  height: 18,
                  width: 20,
                  // color: Colors.green,
                  child: Text(
                    text3,
                    style: const TextStyle(color: AppTheme.barcolor),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  child: Text(
                    text4,
                    style: const TextStyle(color: AppTheme.barcolor),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  child: Text(
                    text5,
                    style: const TextStyle(color: AppTheme.barcolor),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
