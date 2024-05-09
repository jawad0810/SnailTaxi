import 'package:flutter/material.dart';

import 'package:snail_taxi_app/onboarding/utils/app_theme.dart';

class EditAccountPage extends StatefulWidget {
  const EditAccountPage({super.key});

  @override
  State<EditAccountPage> createState() => _EditAccountPageState();
}

class _EditAccountPageState extends State<EditAccountPage> {
  bool imgsize = false;
  // bool isVolumeOn = false;

  bool success = false;
  final FullName = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isPasswordVisible = false;

  // void toggleVolume() {
  //   setState(() {
  //     isVolumeOn = !isVolumeOn;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      //resizeToAvoidBottomInset: true,
      backgroundColor: AppTheme.grey,
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Container(
          height: 780,
          width: 400,
          color: AppTheme.grey,
          child: Stack(children: [
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
                        width: 70,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: const Text(
                          'Edit Account',
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
                  right: 10,
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
                                  height: 570,
                                  width: 350,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(
                                        40), // Adjust the radius as needed
                                  ),
                                  alignment: Alignment.topLeft,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.orange,
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                height: 65,
                                                width: 65,
                                                child: Stack(
                                                  children: [
                                                    Positioned.fill(
                                                      child: Image.asset(
                                                        "assets/images/Notification.png",
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                    const Positioned.fill(
                                                      child: Center(
                                                        child: Icon(
                                                          Icons.camera,
                                                          color: Colors.white,
                                                          size:
                                                              30, // Adjust the size as per your requirement
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              Container(
                                                width: 450,
                                                height: 450,
                                                color: Colors.transparent,
                                                padding:
                                                    const EdgeInsets.all(5),
                                                child: Column(
                                                  children: [
                                                    TextFormField(
                                                      controller: FullName,
                                                      decoration:
                                                          InputDecoration(
                                                        prefixIcon: const Icon(
                                                            Icons.person),
                                                        prefix: Image.asset(
                                                            'assets/images/Line.png'),

                                                        prefixIconColor:
                                                            Colors.grey,

                                                        focusedBorder: OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        25),
                                                            borderSide:
                                                                const BorderSide(
                                                                    color: AppTheme
                                                                        .yellow)),
                                                        enabledBorder: OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        25),
                                                            borderSide:
                                                                const BorderSide(
                                                                    color: Colors
                                                                        .grey)),
                                                        border:
                                                            const OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          50.0)),
                                                        ),

                                                        labelText: 'Full Name',
                                                        labelStyle:
                                                            const TextStyle(
                                                                color: Colors
                                                                    .grey),

                                                        errorStyle: const TextStyle(
                                                            color: Colors
                                                                .red), // Set error text color
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 15,
                                                    ),
                                                    TextFormField(
                                                      controller:
                                                          emailController,
                                                      decoration:
                                                          InputDecoration(
                                                        prefixIcon: const Icon(
                                                            Icons
                                                                .alternate_email),
                                                        prefix: Image.asset(
                                                            'assets/images/Line.png'),

                                                        prefixIconColor:
                                                            Colors.grey,

                                                        focusedBorder: OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        25),
                                                            borderSide:
                                                                const BorderSide(
                                                                    color: AppTheme
                                                                        .yellow)),
                                                        enabledBorder: OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        25),
                                                            borderSide:
                                                                const BorderSide(
                                                                    color: Colors
                                                                        .grey)),
                                                        border:
                                                            const OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          50.0)),
                                                        ),

                                                        labelText:
                                                            'e-mail-Address',
                                                        labelStyle:
                                                            const TextStyle(
                                                                color: Colors
                                                                    .grey),

                                                        errorStyle: const TextStyle(
                                                            color: Colors
                                                                .red), // Set error text color
                                                      ),
                                                      validator: (email) {
                                                        final emailRegex = RegExp(
                                                            r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                                                        if (email != null &&
                                                            !emailRegex
                                                                .hasMatch(
                                                                    email)) {
                                                          return 'Enter valid email';
                                                        }
                                                        return null;
                                                      },
                                                    ),
                                                    const SizedBox(height: 15),
                                                    TextFormField(
                                                      controller:
                                                          passwordController,
                                                      obscureText:
                                                          !isPasswordVisible,
                                                      decoration:
                                                          InputDecoration(
                                                        enabledBorder: OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        25),
                                                            borderSide:
                                                                const BorderSide(
                                                                    color: Colors
                                                                        .grey)),
                                                        focusedBorder: OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        25),
                                                            borderSide:
                                                                const BorderSide(
                                                                    color: AppTheme
                                                                        .yellow)),
                                                        border:
                                                            const OutlineInputBorder(),
                                                        labelText:
                                                            'Password...',
                                                        labelStyle:
                                                            const TextStyle(
                                                                color: Colors
                                                                    .grey),
                                                        prefixIcon: Image.asset(
                                                            'assets/images/Password-Icon.png'),
                                                        suffixIcon: IconButton(
                                                          color: Colors.grey,
                                                          icon: Icon(isPasswordVisible
                                                              ? Icons
                                                                  .visibility_off
                                                              : Icons
                                                                  .visibility_rounded),
                                                          onPressed: () =>
                                                              setState(() {
                                                            isPasswordVisible =
                                                                !isPasswordVisible;
                                                          }),
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(height: 80),
                                                    SizedBox(
                                                      width: 200,
                                                      height: 55,
                                                      child: ElevatedButton(
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                          backgroundColor:
                                                              AppTheme.yellow,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20),
                                                          ),
                                                        ),
                                                        child: const Text(
                                                          'Save',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 17),
                                                        ),
                                                        onPressed: () async {
                                                          print('jawad123456');
                                                          // await Navigator.push(
                                                          //   context,
                                                          //   MaterialPageRoute(
                                                          //     builder: (context) =>
                                                          //         const SelectAccountPage(), // Remove 'const' from here
                                                          //   ),
                                                          // );
                                                        },
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
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
                        onTap: () {},
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: AppTheme.yellow),
                          child: IconButton(
                            onPressed: () {
                              // toggleVolume();
                            },
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
                                onPressed: () {
                                  // toggleVolume();
                                },
                                icon: const Icon(Icons.home),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.lock_clock_outlined,
                                ),
                              ),
                              const SizedBox(
                                width: 60,
                              ),
                              IconButton(
                                onPressed: () {
                                  // toggleVolume();
                                },
                                icon: const Icon(Icons.message),
                              ),
                              IconButton(
                                onPressed: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //       builder: (context) => AccountPage()),
                                  // );
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

// //============================================
// Widget customContainer(
//     {required String image1,
//     required String text,
//     String? image2,
//     bool? isSwitched}) {
//   return Container(
//     width: 300,
//     height: 70,
//     decoration: BoxDecoration(
//       borderRadius:
//           BorderRadius.circular(20), // Adjust radius to change the curvature
//       // Change color as per your requirement
//       // color: Colors.green
//     ),
//     child: Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 15),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//             decoration: BoxDecoration(
//               // color: Colors.green,
//               borderRadius:
//                   BorderRadius.circular(10), // Adjust the radius as needed
//             ),
//             height: 30,
//             width: 30,
//             child: Image.asset(image1),
//           ),
//           Spacer(flex: 1),
//           Container(
//             width: 180,
//             child: Padding(
//               padding: EdgeInsets.symmetric(vertical: 15.0),
//               child: Align(
//                 alignment: Alignment.centerLeft,
//                 child: Text(
//                   text,
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 16,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Spacer(flex: 1),
//           if (isSwitched != null)
//             Switch(
//               activeColor: AppTheme.yellow,
//               inactiveTrackColor: Colors.blue,
//               thumbColor: MaterialStateProperty.all(Colors.white),
//               value: isSwitched!,
//               onChanged: (value) {
//                 // Add logic here to handle state change
//               },
//             ),
//           if (image2 != null)
//             Container(
//               height: 30,
//               width: 30,
//               child: Image.asset(image2),
//             ),
//         ],
//       ),
//     ),
//   );
// }

//============================================
Widget customDivider() {
  return Container(
    child: Divider(
      thickness: 1,
      height: 1,
      color: AppTheme.grey,
    ),
  );
}
//================================

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
