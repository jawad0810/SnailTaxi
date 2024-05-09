import 'package:flutter/material.dart';
import 'package:snail_taxi_app/onboarding/utils/app_theme.dart';
import 'package:snail_taxi_app/paymentpages/ratedrivestar.dart';

// ignore: camel_case_types
class sendtippage extends StatefulWidget {
  const sendtippage({super.key});

  @override
  State<sendtippage> createState() => _sendtippageState();
}

// ignore: camel_case_types
class _sendtippageState extends State<sendtippage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: Stack(
          children: [
            Positioned(
              // left: 0,
              // right: 0,
              top: 0,
              child: Container(
                color: Colors.grey,
                height: 130,
                width: 400,
                //color: Colors.amber,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
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
                          'Send Tip',
                          style: TextStyle(
                              // color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
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
              right: 0,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                child: Container(
                  height: 650,
                  width: 400,
                  color: AppTheme.grey,
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        width: 400,
                        // color: Colors.black,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 8,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Container(
                        height: 80,
                        width: 400,
                        // color: Colors.brown,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Row(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                // color: Colors.red,
                                child:
                                    Image.asset("assets/images/decrease.png"),
                              ),
                              const SizedBox(
                                width: 40,
                              ),
                              Container(
                                height: 50,
                                width: 150,
                                // color: Colors.red,
                                child: const TextField(
                                  style: TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 40,
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                // color: Colors.red,
                                child:
                                    Image.asset("assets/images/increase.png"),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Stack(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Positioned(
                                child: Container(
                                  height: 150,
                                  width: 400,
                                  // color: Colors.green,
                                ),
                              ),
                              Container(
                                height: 270,
                                width: 330,
                                // color: Colors.brown,
                                child: Container(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5),
                                        child: Row(
                                          children: [
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Container(
                                              height: 50,
                                              width: 50,
                                              // color: Colors.amber,
                                              child: const Center(
                                                child: Text(
                                                  '1',
                                                  style: TextStyle(
                                                      color: AppTheme.barcolor,
                                                      fontSize: 35),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 80,
                                            ),
                                            Container(
                                              height: 50,
                                              width: 50,
                                              // color: Colors.amber,
                                              child: const Center(
                                                child: Text(
                                                  '2',
                                                  style: TextStyle(
                                                      color: AppTheme.barcolor,
                                                      fontSize: 35),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 80,
                                            ),
                                            Container(
                                              height: 50,
                                              width: 50,
                                              // color: Colors.amber,
                                              child: const Center(
                                                child: Text(
                                                  '3',
                                                  style: TextStyle(
                                                      color: AppTheme.barcolor,
                                                      fontSize: 35),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5),
                                        child: Row(
                                          children: [
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Container(
                                              height: 50,
                                              width: 50,
                                              // color: Colors.amber,
                                              child: const Center(
                                                child: Text(
                                                  '4',
                                                  style: TextStyle(
                                                      color: AppTheme.barcolor,
                                                      fontSize: 35),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 80,
                                            ),
                                            Container(
                                              height: 50,
                                              width: 50,
                                              // color: Colors.amber,
                                              child: const Center(
                                                child: Text(
                                                  '5',
                                                  style: TextStyle(
                                                      color: AppTheme.barcolor,
                                                      fontSize: 35),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 80,
                                            ),
                                            Container(
                                              height: 50,
                                              width: 50,
                                              // color: Colors.amber,
                                              child: const Center(
                                                child: Text(
                                                  '6',
                                                  style: TextStyle(
                                                      color: AppTheme.barcolor,
                                                      fontSize: 35),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5),
                                        child: Row(
                                          children: [
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Container(
                                              height: 50,
                                              width: 50,
                                              // color: Colors.amber,
                                              child: const Center(
                                                child: Text(
                                                  '7',
                                                  style: TextStyle(
                                                      color: AppTheme.barcolor,
                                                      fontSize: 35),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 80,
                                            ),
                                            Container(
                                              height: 50,
                                              width: 50,
                                              // color: Colors.amber,
                                              child: const Center(
                                                child: Text(
                                                  '8',
                                                  style: TextStyle(
                                                      color: AppTheme.barcolor,
                                                      fontSize: 35),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 80,
                                            ),
                                            Container(
                                              height: 50,
                                              width: 50,
                                              // color: Colors.amber,
                                              child: const Center(
                                                child: Text(
                                                  '9',
                                                  style: TextStyle(
                                                      color: AppTheme.barcolor,
                                                      fontSize: 35),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5),
                                        child: Row(
                                          children: [
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Container(
                                              height: 50,
                                              width: 50,
                                              // color: Colors.amber,
                                              child: const Center(
                                                child: Text(
                                                  '.',
                                                  style: TextStyle(
                                                      color: AppTheme.barcolor,
                                                      fontSize: 35),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 80,
                                            ),
                                            Container(
                                              height: 50,
                                              width: 50,
                                              // color: Colors.amber,
                                              child: const Center(
                                                child: Text(
                                                  '0',
                                                  style: TextStyle(
                                                      color: AppTheme.barcolor,
                                                      fontSize: 35),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 80,
                                            ),
                                            Container(
                                              height: 50,
                                              width: 50,
                                              // color: Colors.amber,
                                              child: Center(
                                                  child: Image.asset(
                                                      "assets/images/Iconx.png")
                                                  //  Text(
                                                  //   '1',
                                                  //   style: TextStyle(
                                                  //       color: AppTheme.barcolor,
                                                  //       fontSize: 35),
                                                  // ),
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 200,
                                height: 60,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: AppTheme.yellow,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          child: const Text(
                                            "Send to  ",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: const Text(
                                            "Joe ",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  onPressed: () async {
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const RateDrivePage(),
                                      ),
                                    );
                                  },
                                ),
                              )
                            ],
                          ),
                          Positioned(
                            top: 55,
                            left: 160,
                            right: 160,
                            child: Container(
                              decoration: const BoxDecoration(
                                  // color: Colors.blue,
                                  ),
                              height: 60,
                              width: 100,
                              child: Center(
                                  child: Image.asset(
                                      "assets/images/Rectangle1.png")),
                            ),
                          ),
                          Positioned(
                            top: 10,
                            left: 80,
                            right: 80,
                            child: Container(
                              height: 80,
                              width: 240,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                              // color: AppTheme.redcolor,
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              border: Border.all(
                                                  color: Colors.white,
                                                  width: 3),
                                            ),
                                            height: 70,
                                            width: 70,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              child: Image.asset(
                                                "assets/images/piccall.png",
                                                fit: BoxFit.fill,
                                              ),
                                            )),
                                        Container(
                                          height: 60,
                                          width: 140,
                                          // color: Colors.green,
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 30,
                                                width: 140,
                                                // color: Colors.amber,
                                                child: const Text(
                                                  "Joe Smith",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                              ),
                                              Container(
                                                height: 30,
                                                width: 140,
                                                // color: Colors.black,
                                                child: const Text(
                                                  "Driver",
                                                  style: TextStyle(
                                                      color: AppTheme.barcolor),
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
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
