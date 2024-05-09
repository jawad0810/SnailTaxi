import 'package:flutter/material.dart';
import 'package:snail_taxi_app/Menu_page/Account_pages/edit_account.dart';
import 'package:snail_taxi_app/Menu_page/Account_pages/select_account.dart';
import 'package:snail_taxi_app/Menu_page/chatpages/chat-voice.dart';

import 'package:snail_taxi_app/homeMenu/Notification.dart';
import 'package:snail_taxi_app/homeMenu/mywallet.dart';

import 'package:snail_taxi_app/onboarding/utils/app_theme.dart';

class DriverDetailsPage extends StatefulWidget {
  const DriverDetailsPage({super.key});

  @override
  State<DriverDetailsPage> createState() => _DriverDetailsPageState();
}

class _DriverDetailsPageState extends State<DriverDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppTheme.grey,
      // appBar: AppBar(
      //   toolbarHeight: -30,
      //   automaticallyImplyLeading: false,
      // ),
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
                          height: 750,
                          width: 400,
                          color: AppTheme.grey,
                          child: Stack(children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(50),
                                bottomRight: Radius.circular(50),
                              ),
                              child: Container(
                                height: 200,
                                width: 400,
                                // color: Colors.blue,
                                child: Image.asset(
                                  "assets/images/Background2.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 310,
                              left: 80,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                height: 70,
                                width: 230,
                                child: const Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Center(
                                      child: Text(
                                    "+46-745-5533",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 20),
                                  )),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 295,
                              left: 150,
                              child: Container(
                                  decoration: BoxDecoration(
                                    color: AppTheme.grey,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  height: 30,
                                  width: 100,
                                  child: const Center(
                                      child: Text(
                                    "Phone",
                                    style: TextStyle(fontSize: 16),
                                  ))),
                            ),
                            Positioned(
                              top: 140,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const MyWalletPage()),
                                        );
                                      },
                                      child: Container(
                                          decoration: BoxDecoration(
                                            // color: AppTheme.redcolor,
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            border: Border.all(
                                                color: Colors.white, width: 3),
                                          ),
                                          height: 100,
                                          width: 100,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            child: Image.asset(
                                              "assets/images/piccall.png",
                                              fit: BoxFit.fill,
                                            ),
                                          )),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      height: 30,
                                      width: 330,
                                      // color: Colors.amberAccent,
                                      child: const Center(
                                        child: Text(
                                          "Joe Smith",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w900),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 130,
                                    ),
                                    Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(25),
                                        ),
                                        height: 90,
                                        width: 350,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            left: 30,
                                          ),
                                          child: Row(
                                            children: [
                                              Container(
                                                alignment: Alignment.topLeft,
                                                height: 50,
                                                width: 80,
                                                // color: Colors.amber,
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      child: Column(
                                                        children: [
                                                          Container(
                                                            height: 50,
                                                            width: 40,
                                                            //color: Colors.red,
                                                            child: Column(
                                                              children: [
                                                                Container(
                                                                  height: 25,
                                                                  width: 40,
                                                                  // color: Colors
                                                                  //     .green,
                                                                  child: Image
                                                                      .asset(
                                                                          "assets/images/Star-Icon.png"),
                                                                ),
                                                                Container(
                                                                  height: 25,
                                                                  width: 40,
                                                                  // color: Colors
                                                                  //     .blue,
                                                                  child:
                                                                      const Center(
                                                                    child: Text(
                                                                      "4.8",
                                                                      style: TextStyle(
                                                                          fontWeight: FontWeight
                                                                              .w900,
                                                                          fontSize:
                                                                              17),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      height: 40,
                                                      width: 30,
                                                      // color: Colors.brown,
                                                      child: const Text(
                                                        "Point",
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color: AppTheme
                                                                .barcolor),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 1,
                                              ),
                                              Container(
                                                height: 50,
                                                width: 10,
                                                // color: Colors.black,
                                                child: Image.asset(
                                                    "assets/images/Line04.png"),
                                              ),
                                              const SizedBox(
                                                width: 30,
                                              ),
                                              Container(
                                                alignment: Alignment.topLeft,
                                                height: 50,
                                                width: 70,
                                                // color: Colors.amber,
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      child: Column(
                                                        children: [
                                                          Container(
                                                            height: 50,
                                                            width: 40,
                                                            // color: Colors.red,
                                                            child: Column(
                                                              children: [
                                                                Container(
                                                                  height: 25,
                                                                  width: 40,
                                                                  // color: Colors
                                                                  //     .green,
                                                                  child: Image
                                                                      .asset(
                                                                          "assets/images/Car-Icon.png"),
                                                                ),
                                                                Container(
                                                                  height: 25,
                                                                  width: 40,
                                                                  // color: Colors
                                                                  //     .blue,
                                                                  child:
                                                                      const Center(
                                                                    child: Text(
                                                                      "123",
                                                                      style: TextStyle(
                                                                          fontWeight: FontWeight
                                                                              .w900,
                                                                          fontSize:
                                                                              17),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      height: 40,
                                                      width: 30,
                                                      // color: Colors.brown,
                                                      child: const Text(
                                                        "Trips",
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color: AppTheme
                                                                .barcolor),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Container(
                                                height: 50,
                                                width: 10,
                                                // color: Colors.blue,
                                                child: Image.asset(
                                                    "assets/images/Line04.png"),
                                              ),
                                              const SizedBox(
                                                width: 20,
                                              ),
                                              Container(
                                                alignment: Alignment.topLeft,
                                                height: 50,
                                                width: 70,
                                                // color: Colors.amber,
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      child: Column(
                                                        children: [
                                                          Container(
                                                            height: 50,
                                                            width: 25,
                                                            // color: Colors.red,
                                                            child: Column(
                                                              children: [
                                                                Container(
                                                                  height: 25,
                                                                  width: 40,
                                                                  // color: Colors
                                                                  //     .green,
                                                                  child: Image
                                                                      .asset(
                                                                          "assets/images/Time-Icon.png"),
                                                                ),
                                                                Container(
                                                                  height: 25,
                                                                  width: 30,
                                                                  // color: Colors
                                                                  // .blue,
                                                                  child:
                                                                      const Center(
                                                                    child: Text(
                                                                      "99",
                                                                      style: TextStyle(
                                                                          fontWeight: FontWeight
                                                                              .w900,
                                                                          fontSize:
                                                                              17),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      height: 40,
                                                      width: 35,
                                                      // color: Colors.brown,
                                                      child: const Text(
                                                        "Years",
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color: AppTheme
                                                                .barcolor),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                            ],
                                          ),
                                        )),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                        height: 500,
                                        width: 360,
                                        // color: Colors.transparent,
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.circular(
                                              40), // Adjust the radius as needed
                                        ),
                                        child: SingleChildScrollView(
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 500,
                                                width: 360,
                                                //color: Colors.black,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          40), // Adjust the radius as needed
                                                ),
                                                child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            20),
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                          height: 60,
                                                          width: 300,
                                                          // color: Colors.amber,
                                                          child: Column(
                                                            children: [
                                                              Container(
                                                                height: 28,
                                                                width: 300,
                                                                // color: Colors
                                                                //     .deepPurpleAccent,
                                                                child:
                                                                    const Text(
                                                                  'Member since',
                                                                  style: TextStyle(
                                                                      color: AppTheme
                                                                          .barcolor,
                                                                      fontSize:
                                                                          18),
                                                                ),
                                                              ),
                                                              Container(
                                                                height: 30,
                                                                width: 300,
                                                                // color: Colors
                                                                //     .deepPurpleAccent,
                                                                child:
                                                                    const Text(
                                                                  '2019 05 October',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          18,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w900),
                                                                ),
                                                              ),
                                                              customDivider()
                                                            ],
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          height: 20,
                                                        ),
                                                        Container(
                                                          height: 60,
                                                          width: 300,
                                                          // color: Colors.amber,
                                                          child: Column(
                                                            children: [
                                                              Container(
                                                                height: 28,
                                                                width: 300,
                                                                // color: Colors
                                                                //     .deepPurpleAccent,
                                                                child:
                                                                    const Text(
                                                                  'Car Model',
                                                                  style: TextStyle(
                                                                      color: AppTheme
                                                                          .barcolor,
                                                                      fontSize:
                                                                          18),
                                                                ),
                                                              ),
                                                              Container(
                                                                height: 30,
                                                                width: 300,
                                                                // color: Colors
                                                                //     .deepPurpleAccent,
                                                                child:
                                                                    const Text(
                                                                  '22 A 228 10',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          18,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w900),
                                                                ),
                                                              ),
                                                              customDivider()
                                                            ],
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          height: 20,
                                                        ),
                                                        Container(
                                                          height: 60,
                                                          width: 300,
                                                          // color: Colors.amber,
                                                          child: Column(
                                                            children: [
                                                              Container(
                                                                height: 28,
                                                                width: 300,
                                                                // color: Colors
                                                                //     .deepPurpleAccent,
                                                                child:
                                                                    const Text(
                                                                  'Plate number',
                                                                  style: TextStyle(
                                                                      color: AppTheme
                                                                          .barcolor,
                                                                      fontSize:
                                                                          18),
                                                                ),
                                                              ),
                                                              Container(
                                                                height: 30,
                                                                width: 300,
                                                                // color: Colors
                                                                //     .deepPurpleAccent,
                                                                child:
                                                                    const Text(
                                                                  'Hs785k',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          18,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w900),
                                                                ),
                                                              ),
                                                              customDivider()
                                                            ],
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          height: 20,
                                                        ),
                                                        Container(
                                                          height: 60,
                                                          width: 300,
                                                          // color: Colors.amber,
                                                          child: Column(
                                                            children: [
                                                              Container(
                                                                height: 28,
                                                                width: 300,
                                                                // color: Colors
                                                                //     .deepPurpleAccent,
                                                                child:
                                                                    const Text(
                                                                  'Member since',
                                                                  style: TextStyle(
                                                                      color: AppTheme
                                                                          .barcolor,
                                                                      fontSize:
                                                                          18),
                                                                ),
                                                              ),
                                                              Container(
                                                                height: 30,
                                                                width: 300,
                                                                // color: Colors
                                                                //     .deepPurpleAccent,
                                                                child:
                                                                    const Text(
                                                                  '2019 05 October',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          18,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w900),
                                                                ),
                                                              ),
                                                              customDivider(),
                                                            ],
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          height: 240,
                                                        ),
                                                      ],
                                                    )),
                                              ),
                                              const SizedBox(
                                                height: 120,
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
                              top: 50,
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
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const DriverDetailsPage()));
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          child: const Text(
                                            'Driver details',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500),
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
            color: Colors.transparent,
            child: Stack(
              children: [
                CustomPaint(
                  size: const Size(400, 230),
                  painter: RPSCustomPainter1(),
                ),
                Positioned(
                  left: 170,
                  top: 20,
                  child: GestureDetector(
                    onTap: () {},
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
                                    builder: (context) =>
                                        const EditAccountPage()),
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
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
          ),
          SizedBox(
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
          SizedBox(
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
                    style: TextStyle(color: AppTheme.barcolor),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  child: Text(
                    text4,
                    style: TextStyle(color: AppTheme.barcolor),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  child: Text(
                    text5,
                    style: TextStyle(color: AppTheme.barcolor),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
//================================

Widget customDivider() {
  return Container(
    child: Divider(
      thickness: 1,
      height: 1,
      color: AppTheme.greyColor,
    ),
  );
}
