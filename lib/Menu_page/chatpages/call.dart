import 'package:flutter/material.dart';
import 'package:snail_taxi_app/Menu_page/home.dart';

import 'package:snail_taxi_app/onboarding/utils/app_theme.dart';

import 'package:fluttertoast/fluttertoast.dart';

class ChatVoicePage extends StatefulWidget {
  const ChatVoicePage({super.key});

  @override
  State<ChatVoicePage> createState() => _ChatVoicePageState();
}

class _ChatVoicePageState extends State<ChatVoicePage> {
  bool imgsize = false;
  bool isVolumeOn = false;

  void toggleVolume() {
    setState(() {
      isVolumeOn = !isVolumeOn;
    });
  }

  void toggleColor() {
    setState(() {
      imgsize = !imgsize;
    });
  }

  @override
  Widget build(BuildContext context) {
    String Call1 =
        imgsize ? "assets/images/piccall.png" : "assets/images/Group.png";
    String Call2 =
        imgsize ? "assets/images/Group.png" : "assets/images/piccall.png";

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
            right: 20,
            top: 170,
            child: Container(
              height: 480,
              width: 350,
              // color: Colors.red,
              child: Image.asset(
                Call1, fit: BoxFit.cover,
                // "assets/images/Group.png",
                // fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
              right: 130,
              bottom: 150,
              child: Container(
                height: 60,
                width: 150,
                child: Column(
                  children: [
                    Container(
                      height: 30,
                      width: 150,
                      child: const Center(
                        child: Text(
                          'Joe Smith',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 17),
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 150,
                      child: const Center(
                        child: Text(
                          '02:20',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
          Positioned(
              right: 30,
              top: 140,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    //  color: Colors.blue,
                    border: Border.all(
                      color: Colors
                          .white, // Specify the color of the border (white in this case)
                      width: 2, // Specify the width of the border
                    ),
                  ),
                  height: 90,
                  width: 90,
                  child: Image.asset(
                    Call2,
                    // "assets/images/piccall.png",
                    fit: BoxFit.cover,
                  ),
                ),
              )),
          Positioned(
              right: 20,
              top: 210,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: GestureDetector(
                  onTap: toggleColor,
                  child: Container(
                    height: 40,
                    width: 40,
                    color: AppTheme.grey,
                    child: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Image.asset(
                        "assets/images/Arrows.png",
                        fit: BoxFit.fill,
                      ),
                    ),
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
                  left: 160,
                  top: 20,
                  child: GestureDetector(
                    onTap: () {
                      Fluttertoast.showToast(msg: "Call end");

                      // Fluttertoast.showToast(
                      //   msg: "Call is ended",
                      //   gravity: ToastGravity.BOTTOM,
                      //   backgroundColor: Colors.black.withOpacity(0.8),
                      //   textColor: Colors.white,
                      //   fontSize: 16.0,
                      // );
                    },
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppTheme.kPrimaryColor),
                      child: Image.asset(
                        "assets/images/Phon.png",
                        fit: BoxFit.none,
                      ),
                    ),
                  ),
                ),
                Positioned(
                    // left: 75,
                    top: 150,
                    child: Container(
                      width: size.width,
                      height: 90,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            onPressed: () {
                              toggleVolume();
                            },
                            icon: isVolumeOn
                                ? const Icon(Icons.volume_off)
                                : const Icon(Icons.volume_up),
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.camera,
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
