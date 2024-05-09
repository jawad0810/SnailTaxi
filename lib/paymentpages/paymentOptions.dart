//  paymentOptionPage
import 'package:flutter/material.dart';

import 'package:snail_taxi_app/onboarding/utils/app_theme.dart';
import 'package:snail_taxi_app/paymentpages/arriving.dart';

// ignore: camel_case_types
class paymentOptionPage extends StatefulWidget {
  const paymentOptionPage({super.key});

  @override
  State<paymentOptionPage> createState() => _paymentOptionPageState();
}

List<String> options = ['option 1', 'Option 2'];

//=================
// ignore: camel_case_types
class _paymentOptionPageState extends State<paymentOptionPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  final emailFormKey = GlobalKey<FormState>();
  final emailFormKey2 = GlobalKey<FormState>();

  bool isAuthenticating = false;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  // @override
  // void dispose() {
  //   tabController.dispose();
  //   super.dispose();
  // }

  // void toggleImage() {
  //   setState(() {
  //     isUp = !isUp;
  //     containerHeight = isUp ? 250 : 500;
  //   });
  // }

  // void toggleImage2() {
  //   setState(() {
  //     isUp2 = !isUp2;
  //     containerHeight = isUp2 ? 250 : 500;
  //   });
  // }
  String groupValue = "Yes";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.grey,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        // physics: const NeverScrollableScrollPhysics(),
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
                              'Payout',
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
                          child: Column(
                            children: [
                              Container(
                                height: 550,
                                width: 350,
                                // color: Colors.brown,
                                child: authTabbar(),
                              ),
                              SizedBox(
                                width: 200,
                                height: 55,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: AppTheme.yellow,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  child: const Text(
                                    'Proceed to pay',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  onPressed: () async {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const ArrivingPage()
                                            //getstart()
                                            //  NotificationPage()
                                            ));
                                  },
                                ),
                              )
                            ],
                          ),
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
    return Column(
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
                              'Online',
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
                              'Cash',
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
            Container(
              height: 50,
              width: 400,
              child: Stack(children: [
                Positioned(
                  bottom: 30,
                  left: 155,
                  right: 155,
                  child: Container(
                    decoration: const BoxDecoration(
                        // color: Colors.blue,
                        ),
                    height: 40,
                    width: 100,
                    child: Center(
                        child: Image.asset("assets/images/Rectangle1.png")),
                  ),
                ),
                // Positioned(
                //   bottom: 0,
                //   right: 150,
                //   child: Container(
                //     height: 50,
                //     width: 50,
                //     color: Colors.green,
                //   ),
                // ),
              ]),
            ),
            // const SizedBox(height: 10),
            GestureDetector(
              // onTap: toggleImage,
              child: Container(
                // color: Colors.purple,
                // duration: const Duration(seconds: 3),
                width: double.infinity,
                height: tabController.index == 0 ? 440 : 440,
                child: TabBarView(
                  controller: tabController,
                  children: [
                    renderEmailForm(),
                    renderEmailForm2(),
                  ],
                ),
              ),
            ),
            // const SizedBox(height: 50),
          ],
        ),
      ],
    );
  }

  Widget renderEmailForm() {
    return Form(
      key: emailFormKey,
      child: Container(
          // color: Colors.red,
          child: Column(
        children: [
          Row(
            children: [
              Container(
                alignment: Alignment.topRight,
                height: 60,
                width: 150,
                // color: Colors.amber,
                child: const Text(
                  "\$",
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.w900),
                ),
              ),
              Container(
                height: 60,
                width: 150,
                // color: Colors.amber,
                child: const Text(
                  "25.00",
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.w900),
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.centerLeft,
            height: 70,
            width: 350,
            // color: Colors.blueGrey,
            child: const Text(
              "Payment Method :",
              style: TextStyle(fontWeight: FontWeight.w900),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            height: 150,
            width: 350,
            // color: Colors.blueAccent,
            child: Column(
              children: [
                Container(
                  height: 70,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          // color: Colors.blue,
                          child: Image.asset("assets/images/Bank-Icon.png"),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          height: 50,
                          width: 180,
                          // color: Colors.blue,
                          child: const Text(
                            "Bank Account",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          // color: Colors.blue,
                          child: Radio(
                              value: "Yes",
                              groupValue: groupValue,
                              activeColor: Colors.green,
                              onChanged: (value) {
                                setState(() {
                                  groupValue = value!;
                                });
                              }),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 70,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          // color: Colors.blue,
                          child: Image.asset("assets/images/mastercard.png"),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          height: 50,
                          width: 180,
                          // color: Colors.blue,
                          child: const Text(
                            "**** **** **** 2453",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          // color: Colors.blue,
                          child: Radio(
                              value: "No",
                              groupValue: groupValue,
                              activeColor: Colors.green,
                              onChanged: (value) {
                                setState(() {
                                  groupValue = value!;
                                });
                              }),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            height: 60,
            width: 350,
            // color: Colors.blueGrey,
            child: const Text(
              "Promo Code :",
              style: TextStyle(fontWeight: FontWeight.w900),
            ),
          ),
          Container(
            // color: Colors.white,
            height: 70,
            width: 320,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(
                color: AppTheme.barcolor, // Set border color to red
                width: 2, // Set border width
              ), // Adjust the radius as needed
            ),
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 25,
                    // color: Colors.green,
                    child: Image.asset("assets/images/giftIcon.png"),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 50,
                    width: 25,
                    // color: Colors.blue,
                    child: Image.asset("assets/images/Line03.png"),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 200,
                    // color: Colors.pink,
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: 'Promo Code (Optional)',
                        hintStyle: TextStyle(color: AppTheme.barcolor),
                        border: InputBorder.none, // Remove bottom line
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }

  Widget renderEmailForm2() {
    return Form(
      key: emailFormKey2,
      child: Container(
        color: Colors.blueAccent,

        //
      ),
    );
  }
}
