import 'package:flutter/material.dart';
import 'package:snail_taxi_app/Menu_page/Account_pages/edit_account.dart';
import 'package:snail_taxi_app/Menu_page/Account_pages/select_account.dart';
import 'package:snail_taxi_app/Menu_page/chatpages/chat-voice.dart';
import 'package:snail_taxi_app/homeMenu/Notification.dart';
import 'package:snail_taxi_app/onboarding/utils/app_theme.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:snail_taxi_app/paymentpages/canceltrip.dart';

class MyWalletPage extends StatefulWidget {
  const MyWalletPage({super.key});

  @override
  State<MyWalletPage> createState() => _MyWalletPageState();
}

class _MyWalletPageState extends State<MyWalletPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppTheme.grey,
      body: Stack(children: [
        Positioned(
          left: 0,
          right: 0,
          child: Container(
            height: 150,
            width: 200,
            // color: Colors.amber,
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
                    width: 100,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: const Text(
                      'My Wallet',
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
        ),
        Positioned(
          top: 240,
          right: 105,
          child: Container(
            height: 100,
            width: 200,
            // color: Colors.amber,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:
                  BorderRadius.circular(40), // Adjust the radius as needed
            ),
          ),
        ),
        Positioned(
          top: 230,
          right: 80,
          child: Container(
            height: 100,
            width: 250,
            // color: Colors.amber,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:
                  BorderRadius.circular(40), // Adjust the radius as needed
            ),
          ),
        ),
        Stack(children: [
          Positioned(
              right: 30,
              top: 140,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 170,
                              width: 320,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                    40), // Adjust the radius as needed
                              ),
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 70,
                                      width: 320,
                                      // color: Colors.amber,
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 50,
                                            width: 80,
                                            // color: Colors.green,
                                            child: Image.asset(
                                                "assets/images/wallet1.png"),
                                          ),
                                          // SizedBox(
                                          //   width: 10,
                                          // ),
                                          Container(
                                            height: 90,
                                            width: 200,
                                            // color: Colors.green,
                                            child: Column(
                                              children: [
                                                Container(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  height: 30,
                                                  width: 200,
                                                  // color: Colors.purple,
                                                  child: const Text(
                                                    "Wallet",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 16),
                                                  ),
                                                ),
                                                Container(
                                                  height: 30,
                                                  width: 220,
                                                  // color: Colors.pink,
                                                  child: const Text(
                                                    "Defult Payment Method",
                                                    style: TextStyle(
                                                        color:
                                                            AppTheme.barcolor,
                                                        fontSize: 16),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 60,
                                      width: 320,
                                      // color: Colors.red,
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 50,
                                            width: 200,
                                            // color: Colors.brown,
                                            child: Column(
                                              children: [
                                                Container(
                                                  height: 20,
                                                  width: 170,
                                                  // color:
                                                  //     Colors.deepPurpleAccent,
                                                  child: const Text(
                                                    "Balance",
                                                    style: TextStyle(
                                                        color:
                                                            AppTheme.barcolor),
                                                  ),
                                                ),
                                                Container(
                                                    height: 30,
                                                    width: 170,
                                                    // color: Colors.redAccent,
                                                    child: const Text(
                                                      '\$25.00',
                                                      style: TextStyle(
                                                        fontSize:
                                                            22, // Adjust the font size as needed
                                                        fontWeight: FontWeight
                                                            .bold, // Optional: Adjust the font weight
                                                      ),
                                                    )),
                                              ],
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const CancelTripPage()
                                                    //sendtippage()
                                                    ),
                                              );
                                            },
                                            child: Container(
                                              alignment: Alignment.centerRight,
                                              height: 70,
                                              width: 100,
                                              // color: Colors.yellow,
                                              child: Image.asset(
                                                  "assets/images/Add.png"),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // color: Colors.white,
                            ),
                            const SizedBox(
                              height: 60,
                            ),
                            Container(
                              height: 80,
                              width: 320,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      // color: Colors.amber,
                                      child:
                                          Image.asset("assets/images/Icon.png"),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 50,
                                      width: 200,
                                      // color: Colors.blue,
                                      alignment: Alignment.centerLeft,
                                      child: const Text(
                                        "Payment Methods",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 40,
                                      width: 40,
                                      // color: Colors.green,
                                      child: Image.asset(
                                          "assets/images/Right2.png"),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 80,
                              width: 320,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      // color: Colors.amber,
                                      child: Image.asset(
                                          "assets/images/Coupon-Icon.png"),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 50,
                                      width: 200,
                                      // color: Colors.blue,
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 50,
                                            width: 70,
                                            // color: Colors.red,
                                            alignment: Alignment.centerLeft,
                                            child: const Text(
                                              "Coupon",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16),
                                            ),
                                          ),
                                          Container(
                                            height: 50,
                                            width: 100,
                                            // color: Colors.amber,
                                            child: Row(
                                              children: [
                                                Container(
                                                  child: const Text(
                                                    '(',
                                                    style: TextStyle(
                                                        color:
                                                            AppTheme.barcolor),
                                                  ),
                                                ),
                                                Container(
                                                  child: const Text(
                                                    '45',
                                                    style: TextStyle(
                                                        color:
                                                            AppTheme.barcolor),
                                                  ),
                                                ),
                                                Container(
                                                  child: const Text(
                                                    ')',
                                                    style: TextStyle(
                                                        color:
                                                            AppTheme.barcolor),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 40,
                                      width: 40,
                                      // color: Colors.green,
                                      child: Image.asset(
                                          "assets/images/Right2.png"),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 80,
                              width: 320,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      // color: Colors.amber,
                                      child: Image.asset(
                                          "assets/images/Icon1.png"),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 50,
                                      width: 200,
                                      // color: Colors.blue,
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 50,
                                            width: 100,
                                            // color: Colors.red,
                                            alignment: Alignment.centerLeft,
                                            child: const Text(
                                              "Transactions",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16),
                                            ),
                                          ),
                                          Container(
                                            height: 50,
                                            width: 100,
                                            // color: Colors.amber,
                                            child: Row(
                                              children: [
                                                Container(
                                                  child: const Text(
                                                    '(',
                                                    style: TextStyle(
                                                        color:
                                                            AppTheme.barcolor),
                                                  ),
                                                ),
                                                Container(
                                                  child: const Text(
                                                    '45',
                                                    style: TextStyle(
                                                        color:
                                                            AppTheme.barcolor),
                                                  ),
                                                ),
                                                Container(
                                                  child: const Text(
                                                    ')',
                                                    style: TextStyle(
                                                        color:
                                                            AppTheme.barcolor),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 40,
                                      width: 40,
                                      // color: Colors.green,
                                      child: Image.asset(
                                          "assets/images/Right2.png"),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )),
        ]),
        Positioned(
          bottom: 0,
          left: 0,
          child: Column(
            children: [
              Container(
                height: 100,
                width: 400,
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
                          //  Image.asset(
                          //   "assets/images/Phon.png",
                          //   fit: BoxFit.none,
                          // ),
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
            ],
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
