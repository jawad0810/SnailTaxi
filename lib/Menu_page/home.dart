import 'package:flutter/material.dart';
import 'package:snail_taxi_app/Menu_page/Account_pages/edit_account.dart';
import 'package:snail_taxi_app/Menu_page/Account_pages/select_account.dart';
import 'package:snail_taxi_app/Menu_page/chatpages/chat-voice.dart';
import 'package:snail_taxi_app/Menu_page/chatpages/messagepage.dart';
import 'package:snail_taxi_app/homeMenu/Notification.dart';

import 'package:snail_taxi_app/onboarding/utils/app_theme.dart';

import 'package:fluttertoast/fluttertoast.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
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
                    width: 100,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: const Text(
                      'Call',
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
              top: 120,
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
                              height: 510,
                              width: 310,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                    40), // Adjust the radius as needed
                              ),
                              alignment: Alignment.topLeft,
                              child: Column(
                                children: [
                                  Container(
                                    height: 100,
                                    width: 300,
                                    // color: Colors.blue,
                                    decoration: BoxDecoration(
                                      // color: Colors.blue,
                                      borderRadius: BorderRadius.circular(
                                          40), // Adjust the radius as needed
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(18.0),
                                      child: Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(
                                                  20), // Adjust radius to change the curvature
                                              //color: Colors
                                              // .red, // Change color as per your requirement
                                            ),
                                            //  color: Colors.red,
                                            height: 70,
                                            width: 70,
                                            //color: Colors.red,
                                            child: Image.asset(
                                              "assets/images/Notification.png",
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                            height: 70,
                                            width: 180,
                                            // color: Colors.red,
                                            child: Column(
                                              children: [
                                                Container(
                                                  width: 180,
                                                  height: 30,
                                                  // color: Colors.yellow,
                                                  child: const Text(
                                                    'Alex Hales',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 18),
                                                  ),
                                                ),
                                                Container(
                                                  width: 180,
                                                  height: 30,
                                                  // color: Colors.yellow,
                                                  child: const Text(
                                                    '+46 16 755 7287',
                                                    style: TextStyle(
                                                        color:
                                                            AppTheme.barcolor),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 280,
                                    // color: Colors.red,
                                    child: const Text(
                                      'personal information',
                                      style:
                                          TextStyle(color: AppTheme.barcolor),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const EditAccountPage()),
                                      );
                                    },
                                    child: Container(
                                        width: 300,
                                        height: 70,
                                        // color: Colors.amber,
                                        child: customContainer(
                                          image1:
                                              "assets/images/Location-Icon01.png",
                                          text: "Location",
                                          image2:
                                              "assets/images/Right-Icon.png",
                                        )),
                                  ),
                                  customDivider(),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const MessageChatPage()),
                                      );
                                    },
                                    child: Container(
                                        width: 300,
                                        height: 70,
                                        // color: Colors.amber,
                                        child: customContainer(
                                          image1: "assets/images/Card-Icon.png",
                                          text: "Payment",
                                          image2:
                                              "assets/images/Right-Icon.png",
                                        )),
                                  ),
                                  customDivider(),
                                  Container(
                                      width: 300,
                                      height: 70,
                                      // color: Colors.amber,
                                      child: customContainer(
                                        image1: "assets/images/User-Icon.png",
                                        text: "Information",
                                        image2: "assets/images/Right-Icon.png",
                                      )),
                                  customDivider(),
                                  Container(
                                      width: 300,
                                      height: 70,
                                      // color: Colors.amber,
                                      child: customContainer(
                                        image1: "assets/images/Secure-Icon.png",
                                        text: "Security",
                                        image2: "assets/images/Right-Icon.png",
                                      )),
                                  customDivider(),
                                  Container(
                                      width: 300,
                                      height: 70,
                                      // color: Colors.amber,
                                      child: customContainer(
                                        image1:
                                            "assets/images/Percent-Icon.png",
                                        text: "Discount Notification",
                                        isSwitched: true,
                                      )),
                                ],
                              ),
                            ),
                            // const SizedBox(
                            //   height: 80,
                            // ),
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
                                      const NotificationsPage(), // Remove 'const' from here
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

// //============================================
Widget customContainer(
    {required String image1,
    required String text,
    String? image2,
    bool? isSwitched}) {
  return Container(
    width: 300,
    height: 70,
    decoration: BoxDecoration(
      borderRadius:
          BorderRadius.circular(20), // Adjust radius to change the curvature
      // Change color as per your requirement
      // color: Colors.green
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              // color: Colors.green,
              borderRadius:
                  BorderRadius.circular(10), // Adjust the radius as needed
            ),
            height: 30,
            width: 30,
            child: Image.asset(image1),
          ),
          const Spacer(flex: 1),
          Container(
            width: 180,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  text,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          const Spacer(flex: 1),
          if (isSwitched != null)
            Switch(
              activeColor: AppTheme.yellow,
              inactiveTrackColor: Colors.blue,
              thumbColor: MaterialStateProperty.all(Colors.white),
              value: isSwitched!,
              onChanged: (value) {
                // Add logic here to handle state change
              },
            ),
          if (image2 != null)
            Container(
              height: 30,
              width: 30,
              child: Image.asset(image2),
            ),
          // if (isSwitched == null)
          //   Container(
          //     width: 1,
          //     height: 1,
          //     color: Colors.red,
          //   ),
        ],
      ),
    ),
  );
}

//============================================
Widget customDivider() {
  return const Divider(
    thickness: 1,
    height: 1,
    color: AppTheme.grey,
  );
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
