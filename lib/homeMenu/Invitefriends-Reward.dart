import 'package:flutter/material.dart';
import 'package:snail_taxi_app/Menu_page/Account_pages/edit_account.dart';
import 'package:snail_taxi_app/Menu_page/Account_pages/select_account.dart';
import 'package:snail_taxi_app/Menu_page/chatpages/chat-voice.dart';
import 'package:snail_taxi_app/homeMenu/FQA.dart';
import 'package:snail_taxi_app/homeMenu/Notification.dart';

import 'package:snail_taxi_app/onboarding/utils/app_theme.dart';

import 'package:fluttertoast/fluttertoast.dart';

class InviteFriendsRewardPage extends StatefulWidget {
  const InviteFriendsRewardPage({super.key});

  @override
  State<InviteFriendsRewardPage> createState() =>
      _InviteFriendsRewardPageState();
}

class _InviteFriendsRewardPageState extends State<InviteFriendsRewardPage> {
  bool imgsize = false;
  bool isVolumeOn = false;

  void toggleVolume() {
    setState(() {
      isVolumeOn = !isVolumeOn;
    });
  }

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
                    width: 80,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: const Text(
                      'Reward',
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
                              // color: Colors.white,
                              height: 210,
                              width: 320,
                              decoration: BoxDecoration(
                                // color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                    40), // Adjust the radius as needed
                              ),
                              alignment: Alignment.topCenter,
                              child:
                                  Image.asset("assets/images/Music_Two1.png"),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              // color: Colors.white,
                              height: 120,
                              width: 320,
                              decoration: BoxDecoration(
                                // color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                    40), // Adjust the radius as needed
                              ),
                              alignment: Alignment.topCenter,
                              child: Column(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 200,
                                    // color: Colors.amber,
                                    child: const Center(
                                      child: Text(
                                        "congratulation",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    height: 60,
                                    width: 320,
                                    // color: Colors.amber,
                                    child: const Text(
                                      "You recived anaaward through your friend membership!",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            SizedBox(
                              width: 160,
                              height: 55,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppTheme.yellow,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                child: const Text(
                                  "Recive "
                                  '\$20', // Include the dollar sign ($) before 20
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                ),
                                onPressed: () async {
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const FQAPage(), // Remove 'const' from here
                                    ),
                                  );
                                },
                              ),
                            )
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
                        onPressed: () {
                          toggleVolume();
                        },
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
                                      NotificationsPage(), // Remove 'const' from here
                                ),
                              );
                              // toggleVolume();
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
                          SizedBox(
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
