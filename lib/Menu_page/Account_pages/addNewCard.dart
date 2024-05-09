import 'package:flutter/material.dart';
import 'package:snail_taxi_app/Menu_page/chatpages/ridehistory.dart';
import 'package:snail_taxi_app/onboarding/utils/app_theme.dart';

class AddNewCardPage extends StatefulWidget {
  const AddNewCardPage({super.key});

  @override
  State<AddNewCardPage> createState() => _AddNewCardPageState();
}

class _AddNewCardPageState extends State<AddNewCardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppTheme.grey,
        body: SingleChildScrollView(
          child: Stack(children: [
            Container(
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Padding(
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
                    const SizedBox(
                      height: 10,
                    ),
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                      child: Container(
                        height: 650,
                        //  height: MediaQuery.sizeOf(context).height,
                        width: double.infinity,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  // color: AppTheme.yellow,
                                ),
                                alignment: Alignment.centerLeft,
                                width: 50,
                                height: 8,
                                child: const Text(
                                  '',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              Container(
                                  height: 130,
                                  width: 150,
                                  // color: Colors.blue,
                                  child:
                                      Image.asset("assets/images/AddCard.png")),
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 30,
                                width: 130,
                                // color: Colors.blue,
                                child: const Text(
                                  'Add new Card',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 30,
                                width: 180,
                                //color: Colors.blue,
                                child:
                                    const Text('Add your debit/creadit card'),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              TextFormField(
                                // controller: emailController,
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(Icons.person),
                                  prefix: Image.asset('assets/images/Line.png'),

                                  prefixIconColor: Colors.grey,

                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25),
                                      borderSide: const BorderSide(
                                          color: AppTheme.yellow)),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25),
                                      borderSide:
                                          const BorderSide(color: Colors.grey)),
                                  border: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50.0)),
                                  ),

                                  labelText: 'User Name',
                                  labelStyle:
                                      const TextStyle(color: Colors.grey),

                                  errorStyle: const TextStyle(
                                      color:
                                          Colors.red), // Set error text color
                                ),
                                // validator: (email) {
                                //   final emailRegex = RegExp(
                                //       r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                                //   if (email != null &&
                                //       !emailRegex.hasMatch(email)) {
                                //     return 'Enter valid email';
                                //   }
                                //   return null;
                                // },
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                // controller: emailController,
                                decoration: InputDecoration(
                                  prefixIcon: const Row(
                                    // Wrap the icons in a Row widget
                                    mainAxisSize: MainAxisSize
                                        .min, // Ensure the row takes minimum space
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(Icons.wallet),
                                      SizedBox(
                                          width:
                                              8), // Add some space between the icons
                                      // Icon(Icons.add),
                                    ],
                                  ),
                                  prefixIconColor: Colors.grey,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25),
                                    borderSide: const BorderSide(
                                        color: AppTheme.yellow),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25),
                                    borderSide:
                                        const BorderSide(color: Colors.grey),
                                  ),
                                  border: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50.0)),
                                  ),
                                  labelText: 'Add New Card',
                                  labelStyle:
                                      const TextStyle(color: Colors.grey),
                                  errorStyle: const TextStyle(
                                    color: Colors.red,
                                  ), // Set error text color
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 50,
                                width: 300,
                                //color: Colors.blue,
                                child: Row(
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 120,
                                      color: Colors.white,
                                      child: TextFormField(
                                        // controller: emailController,
                                        decoration: InputDecoration(
                                          prefix: Image.asset(
                                              'assets/images/Line.png'),

                                          prefixIconColor: Colors.grey,

                                          focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: const BorderSide(
                                                  color: AppTheme.yellow)),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: const BorderSide(
                                                  color: Colors.grey)),
                                          border: const OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(50.0)),
                                          ),

                                          labelText: 'Expiry Date',
                                          labelStyle: const TextStyle(
                                              color: Colors.grey),

                                          errorStyle: const TextStyle(
                                              color: Colors
                                                  .red), // Set error text color
                                        ),
                                        // validator: (email) {
                                        //   final emailRegex = RegExp(
                                        //       r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                                        //   if (email != null &&
                                        //       !emailRegex.hasMatch(email)) {
                                        //     return 'Enter valid email';
                                        //   }
                                        //   return null;
                                        // },
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 60,
                                    ),
                                    Container(
                                        height: 50,
                                        width: 120,
                                        color: Colors.white,
                                        child: TextFormField(
                                          // controller: emailController,
                                          decoration: InputDecoration(
                                            prefixIconColor: Colors.grey,

                                            focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                borderSide: const BorderSide(
                                                    color: AppTheme.yellow)),
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                borderSide: const BorderSide(
                                                    color: Colors.grey)),
                                            border: const OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(50.0)),
                                            ),

                                            labelText: 'CVV',
                                            labelStyle: const TextStyle(
                                                color: Colors.grey),

                                            errorStyle: const TextStyle(
                                                color: Colors
                                                    .red), // Set error text color
                                          ),
                                          // validator: (email) {
                                          //   final emailRegex = RegExp(
                                          //       r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                                          //   if (email != null &&
                                          //       !emailRegex.hasMatch(email)) {
                                          //     return 'Enter valid email';
                                          //   }
                                          //   return null;
                                          // },
                                        )),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 30,
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
                                    'Add',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  onPressed: () async {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => const
                                                //getstart()
                                                // MyOtp()
                                                RiderHistoryPage()));
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ));
  }
}
