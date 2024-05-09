import 'package:flutter/material.dart';
import 'package:snail_taxi_app/homeMenu/driverDetail.dart';
import 'package:snail_taxi_app/onboarding/utils/app_theme.dart';

class PaymentHistoryPage extends StatefulWidget {
  const PaymentHistoryPage({Key? key}) : super(key: key);

  @override
  State<PaymentHistoryPage> createState() => _PaymentHistoryPageState();
}

class _PaymentHistoryPageState extends State<PaymentHistoryPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  bool isSwitched = false;
  bool isPaid = true; // Added variable to track payment status
  bool isPaid2 = true;

  final emailFormKey = GlobalKey<FormState>();
  final emailFormKey2 = GlobalKey<FormState>();

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
    return Scaffold(
      backgroundColor: AppTheme.grey,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 80,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const DriverDetailsPage()));
                          },
                          child: SizedBox(
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
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            child: const Text(
                              'Payment History',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        IconButton(
                          onPressed: () {
                            // Toggle payment status
                            setState(() {
                              isPaid = !isPaid;
                            });
                          },
                          icon: const Icon(Icons.add),
                        ),
                        IconButton(
                          onPressed: () {
                            // Toggle payment status
                            setState(() {
                              isPaid2 = !isPaid2;
                            });
                          },
                          icon: const Icon(Icons.add),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 1),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
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
                  labelColor: Colors.white,
                  indicatorColor: Colors.white,
                  indicatorWeight: 1,
                  indicator: BoxDecoration(
                      color: AppTheme.yellow,
                      borderRadius: BorderRadius.circular(15)),
                  controller: tabController,
                  tabs: const [
                    SizedBox(
                      height: 70,
                      child: Tab(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 29,
                            ),
                            Center(
                              child: Text(
                                'Completed',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
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
                      height: 70,
                      child: Tab(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 30,
                            ),
                            Center(
                              child: Text(
                                'Canceled',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
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
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                    width: 280,
                    child: Text(
                      'This week',
                      style: TextStyle(color: AppTheme.greyColor),
                    ),
                  ),
                ],
              ),
              AnimatedContainer(
                color: AppTheme.grey,
                duration: const Duration(seconds: 1),
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
            ],
          ),
        ],
      ),
    );
  }

  Widget renderEmailForm() {
    return Form(
      key: emailFormKey,
      child: Column(
        children: [
          SizedBox(
            height: 500,
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      alignment: Alignment.topCenter,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      height: 160,
                      width: 350,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 40,
                              width: 280,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height: 30,
                                    width: 50,
                                    child: isPaid2
                                        ? Image.asset(
                                            "assets/images/mastercard.png")
                                        : Image.asset(
                                            "assets/images/Paypal.png"),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                    width: 130,
                                    child: Text(
                                      'BerkayErdinc',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    height: 30,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: isPaid
                                              ? Colors.green
                                              : Colors
                                                  .red, // Change color based on payment status
                                          width: 2,
                                        ),
                                        color: const Color.fromARGB(
                                            255, 240, 244, 242),
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Center(
                                      child: Text(
                                        isPaid
                                            ? 'Paid'
                                            : 'Failed', // Display text based on payment status
                                        style: TextStyle(
                                            color: isPaid
                                                ? Colors.green
                                                : Colors.red),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                              width: 280,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 30,
                                    width: 150,
                                    child: Center(
                                      child: Text(
                                        '**** **** **** 2453',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 50,
                              width: 280,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 25,
                                        width: 30,
                                        child: Text(
                                          'Fee',
                                          style: TextStyle(
                                              color: AppTheme.barcolor),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 25,
                                        width: 40,
                                        child: Text(
                                          '11.42',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 25,
                                        width: 100,
                                        child: Text(
                                          'Date',
                                          style: TextStyle(
                                              color: AppTheme.barcolor),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 25,
                                        width: 100,
                                        child: Text('12 Aug 2020',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 25,
                                        width: 60,
                                        child: Text(
                                          'total :',
                                          style: TextStyle(
                                              color: AppTheme.barcolor),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 25,
                                        width: 65,
                                        child: Text('2225.00',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget renderEmailForm2() {
    return SingleChildScrollView(
      child: Form(
        key: emailFormKey2,
        child: Column(
          children: [
            SizedBox(
              height: 500,
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        // alignment: Alignment.topLeft,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        height: 250,
                        width: 350,
                        child: Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: Column(
                              children: [
                                Container(
                                    alignment: Alignment.topLeft,
                                    height: 22,
                                    width: 230,
                                    // color: Colors.green,
                                    child: Text(
                                      'pickup point',
                                      style: TextStyle(
                                          color: AppTheme.greyColor,
                                          fontSize: 16),
                                    )),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  height: 145,
                                  width: 330,
                                  // color: Colors.greenAccent,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                          height: 145,
                                          width: 25,
                                          // color: Colors.yellow,
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 25,
                                                width: 25,
                                                // color: Colors.red,
                                                child: Image.asset(
                                                    "assets/images/Circle.png"),
                                              ),
                                              Container(
                                                height: 60,
                                                width: 25,
                                                // color: Colors.red,
                                                child: Image.asset(
                                                    "assets/images/Line02.png"),
                                              ),
                                              Container(
                                                height: 25,
                                                width: 25,
                                                // color: Colors.red,
                                                child: Image.asset(
                                                    "assets/images/location-Icon.png"),
                                              ),
                                              //Container(height: 10,width: 10,color: Colors.red,child: Image.asset("assets/images/"),),
                                            ],
                                          )),
                                      Container(
                                        height: 150,
                                        width: 270,
                                        // color: Colors.pink,
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 23,
                                              width: 250,
                                              // color: Colors.blue,
                                              child: Text(
                                                'Bisupara, Bashtola 410',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18),
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  height: 45,
                                                  width: 180,
                                                  // color: Colors.grey,
                                                  child: Center(
                                                    child: Divider(
                                                      height: 20,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 50,
                                                  width: 50,
                                                  //color: Colors.black,
                                                  child: CircleAvatar(
                                                    radius: 100,
                                                    // backgroundColor:
                                                    //  Colors.blue,
                                                    backgroundImage: AssetImage(
                                                        "assets/images/taxi.jpeg"),
                                                  ),
                                                )
                                              ],
                                            ),
                                            Container(
                                              height: 20,
                                              width: 250,
                                              // color: Colors.blueGrey,
                                              child: Text(
                                                'Pick Off',
                                                style: TextStyle(
                                                    color: AppTheme.greyColor,
                                                    fontSize: 16),
                                              ),
                                            ),
                                            Container(
                                              height: 30,
                                              width: 250,
                                              // color: Colors.greenAccent,
                                              child: Text(
                                                'Beza Building, aadis 4586',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 33,
                                  width: 300,
                                  // color: Colors.green,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                              height: 50,
                                              width: 50,
                                              // color: Colors.red,
                                              child: Icon(
                                                Icons.map,
                                                color: AppTheme.greyColor,
                                              )),
                                          Container(
                                            height: 50,
                                            width: 50,
                                            // color: Colors.blue,
                                            child: Text('33.1km',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                              height: 50,
                                              width: 50,
                                              // color: Colors.red,
                                              child: Icon(
                                                Icons.punch_clock,
                                                color: AppTheme.greyColor,
                                              )),
                                          Container(
                                            height: 50,
                                            width: 50,
                                            // color: Colors.blue,
                                            child: Text(
                                              '33 min',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                              height: 50,
                                              width: 50,
                                              //color: Colors.red,
                                              child: Icon(
                                                Icons.money,
                                                color: AppTheme.greyColor,
                                              )),
                                          Container(
                                            height: 50,
                                            width: 50,
                                            //color: Colors.blue,
                                            child: Text('88.93',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
