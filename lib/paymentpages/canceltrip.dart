import 'package:flutter/material.dart';
import 'package:snail_taxi_app/Menu_page/Account_pages/edit_account.dart';
import 'package:snail_taxi_app/Menu_page/Account_pages/select_account.dart';
import 'package:snail_taxi_app/Menu_page/chatpages/chat-voice.dart';
import 'package:snail_taxi_app/homeMenu/Notification.dart';
import 'package:snail_taxi_app/onboarding/utils/app_theme.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:snail_taxi_app/paymentpages/sendTip.dart';

class CancelTripPage extends StatefulWidget {
  const CancelTripPage({super.key});

  @override
  State<CancelTripPage> createState() => _CancelTripPageState();
}

bool is_checked1 = false;
bool is_checked2 = false;
bool is_checked3 = false;
bool is_checked4 = false;
bool is_checked5 = false;

class _CancelTripPageState extends State<CancelTripPage> {
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
                      'Cancel Trip',
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
          right: 30,
          top: 140,
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          height: 530,
                          width: 320,
                          // color: Colors.amber,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 70,
                                    width: 270,
                                    // color: Colors.red,
                                    child: Container(
                                      child: const Text(
                                        "Please select the reason for cancellation:",
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 8,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      color: AppTheme.yellow,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    // child: customDivider()
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: CheckboxListTile(
                                        controlAffinity:
                                            ListTileControlAffinity.leading,
                                        title: const Text(
                                          "Waiting for long time",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700),
                                        ),
                                        value: is_checked1,
                                        onChanged: (val) {
                                          setState(() {
                                            is_checked1 = val!;
                                          });
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: CheckboxListTile(
                                      controlAffinity:
                                          ListTileControlAffinity.leading,
                                      title: const Text(
                                        "Wrong address shown",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700),
                                      ),
                                      value: is_checked2,
                                      onChanged: (val) {
                                        setState(() {
                                          is_checked2 = val!;
                                        });
                                      },
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: CheckboxListTile(
                                      controlAffinity:
                                          ListTileControlAffinity.leading,
                                      title: const Text(
                                        "The price is not reasonable",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700),
                                      ),
                                      value: is_checked3,
                                      onChanged: (val) {
                                        setState(() {
                                          is_checked3 = val!;
                                        });
                                      },
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: CheckboxListTile(
                                      controlAffinity:
                                          ListTileControlAffinity.leading,
                                      title: const Text(
                                        "Ride isn't here",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700),
                                      ),
                                      value: is_checked4,
                                      onChanged: (val) {
                                        setState(() {
                                          is_checked4 = val!;
                                        });
                                      },
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: CheckboxListTile(
                                      controlAffinity:
                                          ListTileControlAffinity.leading,
                                      title: const Text(
                                        "Others",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700),
                                      ),
                                      value: is_checked5,
                                      onChanged: (val) {
                                        setState(() {
                                          is_checked5 = val!;
                                        });
                                      },
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    width: 160,
                                    height: 55,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: AppTheme.yellow,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                      ),
                                      child: const Text(
                                        "Submit ",
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
                                                const sendtippage(),
                                          ),
                                        );
                                      },
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
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
                      ),
                    ),
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
