import 'package:flutter/material.dart';

import 'package:snail_taxi_app/onboarding/utils/app_theme.dart';

class RiderHistoryPage extends StatefulWidget {
  const RiderHistoryPage({super.key});

  @override
  State<RiderHistoryPage> createState() => _RiderHistoryPageState();
}

//=================
class _RiderHistoryPageState extends State<RiderHistoryPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  final emailFormKey = GlobalKey<FormState>();
  final emailFormKey2 = GlobalKey<FormState>();

  final phoneFormKey = GlobalKey<FormState>();
  final phoneController = TextEditingController();

  bool isAuthenticating = false;
  bool isUp = false;
  bool isUp2 = false;
  double containerHeight = 500;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  void toggleImage() {
    setState(() {
      isUp = !isUp;
      containerHeight = isUp ? 250 : 500;
    });
  }

  void toggleImage2() {
    setState(() {
      isUp2 = !isUp2;
      containerHeight = isUp2 ? 250 : 500;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.grey,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Stack(
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height,
                child: Center(
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      Row(
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
                              'History',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 50),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 1),
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: authTabbar(),
                        ),
                      ),
                    ],
                  ),
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
            ],
          ),
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
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TabBar(
                  physics: const NeverScrollableScrollPhysics(),
                  labelColor: Colors.white,
                  indicatorColor: Colors.white,
                  indicatorWeight: 1,
                  indicator: BoxDecoration(
                    color: AppTheme.yellow,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  controller: tabController,
                  tabs: const [
                    SizedBox(
                      height: 70,
                      child: Tab(
                        child: Row(
                          children: [
                            SizedBox(width: 45),
                            Center(
                              child: Text(
                                'List',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            SizedBox(width: 1),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 70,
                      child: Tab(
                        child: Row(
                          children: [
                            SizedBox(width: 40),
                            Center(
                              child: Text(
                                'Map',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            SizedBox(width: 5),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                // onTap: toggleImage,
                child: Container(
                  color: AppTheme.grey,
                  // duration: const Duration(seconds: 3),
                  width: double.infinity,
                  height: tabController.index == 0 ? 500 : 500,
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      renderEmailForm(),
                      renderEmailForm2(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget renderEmailForm() {
    return SingleChildScrollView(
      child: Form(
          key: emailFormKey,
          child: Container(
              color: AppTheme.grey,
              padding: const EdgeInsets.all(1),
              child: Column(children: [
                const SizedBox(
                  height: 5,
                ),
                Container(
                  alignment: Alignment.topCenter,
                  height: isUp ? 280 : 140,
                  // height: 200,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      children: [
                        Container(
                          height: 60,
                          width: 280,
                          // color: Colors.orange,
                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                height: 70,
                                width: 230,
                                // color: Colors.yellow,
                                child: Column(
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 200,
                                      // color: Colors.blue,
                                      child: const Text(
                                        '705 Green Summit',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 30,
                                      width: 200,
                                      // color: Colors.pink,
                                      child: const Text(
                                        'Beza Building, aadis 4586',
                                        style: TextStyle(
                                            color: AppTheme.barcolor,
                                            fontSize: 16),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: toggleImage,
                                child: Center(
                                  child: Image.asset(
                                    isUp
                                        ? "assets/images/Up.png"
                                        : "assets/images/Down.png",
                                    width: 50,
                                    height: 50,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Stack(
                          children: [
                            isUp
                                ? Container(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        // color: Colors.red,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      height: 100,
                                      width: 280,
                                      child: Image.asset(
                                        "assets/images/Map.png",
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  )
                                : Container(),
                            isUp
                                ? Container(
                                    child: Positioned(
                                      top: 0,
                                      bottom: 0,
                                      left: 0,
                                      right: 0,
                                      child: Center(
                                        child: Image.asset(
                                          "assets/images/location-Icon02.png",
                                          width: 50,
                                          height: 50,
                                        ),
                                      ),
                                    ),
                                  )
                                : Container(),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Stack(children: [
                          isUp
                              ? Container(
                                  height: 30,
                                  width: 280,
                                  // color: Colors.blue,
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 30,
                                        width: 128,
                                        // color: Colors.red,
                                        child: Row(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                // Add functionality here
                                              },
                                              icon: Image.asset(
                                                "assets/images/Clock-Icon.png",
                                                fit: BoxFit.fill,
                                              ), // Replace with your image path
                                            ),
                                            const Text(
                                              "43 min",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: 30,
                                        width: 128,
                                        // color: Colors.red,
                                        child: Row(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                // Add functionality here
                                              },
                                              icon: Image.asset(
                                                "assets/images/Distance-Icon.png",
                                              ), // Replace with your image path
                                            ),
                                            const Text(
                                              "2.3 km",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              : Container(),
                        ]),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  alignment: Alignment.topCenter,
                  height: isUp2 ? 280 : 140,
                  // height: 200,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      children: [
                        Container(
                          height: 60,
                          width: 280,
                          // color: Colors.orange,
                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                height: 70,
                                width: 230,
                                // color: Colors.yellow,
                                child: Column(
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 200,
                                      // color: Colors.blue,
                                      child: const Text(
                                        'Rawalpindi',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 30,
                                      width: 200,
                                      // color: Colors.pink,
                                      child: const Text(
                                        'Gaziabad Kamalabad Road',
                                        style: TextStyle(
                                            color: AppTheme.barcolor,
                                            fontSize: 16),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: toggleImage2,
                                child: Center(
                                  child: Image.asset(
                                    isUp2
                                        ? "assets/images/Up.png"
                                        : "assets/images/Down.png",
                                    width: 50,
                                    height: 50,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Stack(
                          children: [
                            isUp2
                                ? Container(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        // color: Colors.red,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      height: 100,
                                      width: 280,
                                      child: Image.asset(
                                        "assets/images/Map.png",
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  )
                                : Container(),
                            isUp2
                                ? Container(
                                    child: Positioned(
                                      top: 0,
                                      bottom: 0,
                                      left: 0,
                                      right: 0,
                                      child: Center(
                                        child: Image.asset(
                                          "assets/images/location-Icon02.png",
                                          width: 50,
                                          height: 50,
                                        ),
                                      ),
                                    ),
                                  )
                                : Container(),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Stack(children: [
                          isUp2
                              ? Container(
                                  height: 30,
                                  width: 280,
                                  // color: Colors.blue,
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 30,
                                        width: 128,
                                        // color: Colors.red,
                                        child: Row(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                // Add functionality here
                                              },
                                              icon: Image.asset(
                                                "assets/images/Clock-Icon.png",
                                              ), // Replace with your image path
                                            ),
                                            const Text(
                                              "43 min",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: 30,
                                        width: 128,
                                        // color: Colors.red,
                                        child: Row(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                // Add functionality here
                                              },
                                              icon: Image.asset(
                                                "assets/images/Distance-Icon.png",
                                              ), // Replace with your image path
                                            ),
                                            const Text(
                                              "2.3 km",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              : Container(),
                        ]),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 280,
                  width: 350,
                  decoration: BoxDecoration(
                    // color: Colors.green,
                    borderRadius: BorderRadius.circular(
                        10), // Adjust the radius as needed
                  ),
                )
              ]))),
    );
  }

  Widget renderEmailForm2() {
    return Form(
      key: emailFormKey2,
      child: AnimatedContainer(
        duration: const Duration(seconds: 3),
        color: Colors.pink,
        padding: const EdgeInsets.all(1),
        child: Column(
          children: [
            const SizedBox(height: 25),
            const SizedBox(height: 5),
            Container(
              height: 430,
              width: 350,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
