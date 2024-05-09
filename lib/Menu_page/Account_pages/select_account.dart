import 'package:flutter/material.dart';
import 'package:snail_taxi_app/Menu_page/Account_pages/addNewCard.dart';
import 'package:snail_taxi_app/Menu_page/Account_pages/edit_account.dart';
import 'package:snail_taxi_app/login/sign_up.dart';

import 'package:snail_taxi_app/onboarding/utils/app_theme.dart';

import 'package:fluttertoast/fluttertoast.dart';

class SelectAccountPage extends StatefulWidget {
  const SelectAccountPage({super.key});

  @override
  State<SelectAccountPage> createState() => _SelectAccountPageState();
}

class _SelectAccountPageState extends State<SelectAccountPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  bool isSwitched = false;
  bool isSwitched2 = true;
  var _selectedIndex = 10;

  final emailFormKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isPasswordVisible = false;

  final phoneFormKey = GlobalKey<FormState>();
  final phoneController = TextEditingController();

  bool isAuthenticating = false;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppTheme.grey,
      body: SingleChildScrollView(
        child: Container(
          height: 780,
          width: 400,
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
                        width: 100,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: const Text(
                          'Payment',
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
                  right: 0,
                  top: 100,
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
                                  height: 550,
                                  width: 370,
                                  decoration: BoxDecoration(
                                    color: AppTheme.grey,
                                    borderRadius: BorderRadius.circular(
                                        40), // Adjust the radius as needed
                                  ),
                                  alignment: Alignment.topLeft,
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 380,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              height: 40,
                                              width: 150,
                                              child: const Center(
                                                child: Text(
                                                  'Select account',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                color: AppTheme.yellow,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Center(
                                                child: IconButton(
                                                  onPressed: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                const AddNewCardPage()));
                                                  },
                                                  icon: const Icon(
                                                    Icons.add,
                                                    color: Colors.black,
                                                    size: 24,
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 25,
                                      ),
                                      Container(
                                        height: 160,
                                        width: 500,
                                        child: PageView.builder(
                                          controller: PageController(
                                              initialPage: 3,
                                              viewportFraction: 0.7),
                                          itemBuilder: (context, index) {
                                            // it will use for the select slide is big and unselected slide is showing small
                                            var _scale = _selectedIndex == index
                                                ? 2.0
                                                : 1.0;
                                            return TweenAnimationBuilder(
                                              tween: Tween<double>(
                                                  begin: _scale, end: _scale),
                                              duration:
                                                  Duration(milliseconds: 500),
                                              builder: (BuildContext context,
                                                  double value, Widget? child) {
                                                return Transform.scale(
                                                  scale: value,
                                                  child: Opacity(
                                                    opacity: value,
                                                    child: child,
                                                  ),
                                                );
                                              },
                                              child: Container(
                                                margin: EdgeInsets.all(8),
                                                clipBehavior: Clip.antiAlias,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                ),
                                                child: Container(
                                                  width: 300,
                                                  height: 270,
                                                  color: Colors.white,
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Container(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        height: 25,
                                                        width: 200,
                                                        child: const Icon(
                                                          Icons.sim_card,
                                                          color:
                                                              AppTheme.barcolor,
                                                          size: 24,
                                                        ),
                                                      ),
                                                      Container(
                                                        height: 25,
                                                        width: 200,
                                                        child: const Text(
                                                            '****      ****      ****      2453'),
                                                      ),
                                                      Container(
                                                        height: 25,
                                                        width: 200,
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              width: 100,
                                                              height: 40,
                                                              child: const Text(
                                                                  "Berkay Erdinc"),
                                                            ),
                                                            const SizedBox(
                                                              width: 45,
                                                            ),
                                                            Container(
                                                              width: 50,
                                                              height: 40,
                                                              child: Image.asset(
                                                                  "assets/images/mastercard.png"),
                                                            )
                                                          ],
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                      const SizedBox(height: 30),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 1),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5),
                                          // child: renderEmailForm(),
                                          child: authTabbar(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                if (isAuthenticating)
                                  Positioned.fill(
                                    child: Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.5),
                                      ),
                                      child: const Center(
                                        child: CircularProgressIndicator(
                                          color: Colors.white,
                                        ),
                                      ),
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
            const SizedBox(
              height: 300,
            ),
            Positioned(
              bottom: 0,
              right: 0,
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
                                onPressed: () {},
                                icon: const Icon(Icons.home),
                              ),
                              IconButton(
                                onPressed: () async {
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          SignUpScreen(), // Remove 'const' from here
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
                                onPressed: () {},
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
        ),
      ),
    );
  }

  Widget authTabbar() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            children: [
              Container(
                height: 60,
                width: 450,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TabBar(
                  physics: const NeverScrollableScrollPhysics(),
                  unselectedLabelColor: AppTheme.kPrimaryColor,
                  labelColor: Colors.white,
                  indicatorColor: Colors.white,
                  indicatorWeight: 1,
                  indicator: BoxDecoration(
                      color: AppTheme.yellow,
                      borderRadius: BorderRadius.circular(25)),
                  controller: tabController,
                  tabs: const [
                    SizedBox(
                      height: 70, // Set height to 70 for Log In tab
                      child: Tab(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 45,
                            ),
                            Center(
                              child: Text(
                                'Setting',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            SizedBox(
                              width: 1,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 70, // Set height to 70 for Sign Up tab
                      child: Tab(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 40,
                            ),
                            Center(
                              child: Text(
                                'Transaction',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              AnimatedContainer(
                color: Colors.transparent,
                duration: const Duration(seconds: 1),
                width: double.infinity,
                height: tabController.index == 0 ? 200 : 200,
                child: TabBarView(
                  controller: tabController,
                  children: [renderEmailForm(), Container()],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget renderEmailForm() {
    return Form(
      key: emailFormKey,
      child: Container(
        color: AppTheme.grey,
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 80,
              width: 300,
              child: Row(
                children: [
                  Container(
                    height: 70,
                    width: 240,
                    child: Column(
                      children: [
                        Container(
                          height: 30,
                          width: 240,
                          child: const Text(
                            'Contactless Payment',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 1,
                        ),
                        Container(
                          height: 29,
                          width: 240,
                          child: const Text('Active contactless Payment'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 70,
                    width: 50,
                    child: AbsorbPointer(
                      absorbing:
                          false, // This allows the Switch to receive touch events
                      child: Switch(
                        value: isSwitched2,
                        onChanged: (newValue) {
                          setState(() {
                            isSwitched2 = newValue;
                          });
                        },
                        activeTrackColor: AppTheme.yellow,
                        activeColor: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 80,
              width: 300,
              child: Row(
                children: [
                  Container(
                    height: 70,
                    width: 240,
                    child: Column(
                      children: [
                        Container(
                          height: 30,
                          width: 240,
                          child: const Text(
                            'Default Card',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 1,
                        ),
                        Container(
                          height: 29,
                          width: 240,
                          child: const Text('Set this card as your default'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 70,
                    width: 50,
                    child: AbsorbPointer(
                      absorbing:
                          false, // This allows the Switch to receive touch events
                      child: Switch(
                        value: isSwitched,
                        onChanged: (newValue) {
                          setState(() {
                            isSwitched = newValue;
                          });
                        },
                        activeTrackColor: AppTheme.yellow,
                        activeColor: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
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
          Spacer(flex: 1),
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
          if (isSwitched == null)
            Container(
              width: 1,
              height: 1,
              color: Colors.red,
            ),
        ],
      ),
    ),
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
