// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
// import 'package:get/get.dart';
// import 'package:intl_phone_field/intl_phone_field.dart';
// import 'package:love_you_app/app/auth/login/verify_otp/otp.dart';
// import 'package:love_you_app/utils/app_theme.dart';
import 'package:snail_taxi_app/onboarding/utils/app_theme.dart';
import 'package:snail_taxi_app/otp/otp.dart';

class TabPhone extends StatefulWidget {
  const TabPhone({super.key});
  static String verify = "";
  @override
  State<TabPhone> createState() => _TabPhoneState();
}

class _TabPhoneState extends State<TabPhone> {
  TextEditingController countrycode = TextEditingController();
  var phone = "";

  @override
  void initState() {
    countrycode.text = "+92";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Verification',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
              ),

              Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  children: [
                    Container(
                      child: const Text(
                        'Number',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppTheme.yellow,
                      ),
                      alignment: Alignment.centerLeft,
                      width: 70,
                      height: 8,
                      child: const Text(
                        '',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              Container(
                width: 400,
                alignment: Alignment.center,
                child: const Text(
                  'Plese confirm your country code and enter your phone number',
                  style: TextStyle(fontSize: 22),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              // Container(
              //   width: 350,
              //   child: TextFormField(
              //     keyboardType: TextInputType.phone,
              //     onChanged: (value) {
              //       phone = value;
              //     },
              //     decoration: InputDecoration(
              //       focusedBorder: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(25),
              //           borderSide: const BorderSide(color: AppTheme.yellow)),
              //       enabledBorder: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(25),
              //           borderSide: const BorderSide(color: Colors.grey)),
              //       border: OutlineInputBorder(),
              //       labelText: 'Phone',
              //     ),
              //   ),
              // ),
              const SizedBox(
                height: 30,
              ),
              //=========================================================
              Container(
                width: 350,
                child: IntlPhoneField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: const BorderSide(color: AppTheme.yellow)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: const BorderSide(color: Colors.grey)),
                    suffix: const Icon(
                      Icons.phone,
                      color: Colors.grey,
                    ),
                  ),
                  initialCountryCode: 'PK',
                  keyboardType: TextInputType.phone,
                  onChanged: (value) {
                    phone = value as String;
                  },
                  //  (phone) {
                  //     print(phone.completeNumber);
                  // },
                ),
              ),

              // color: Colors.blue,
              const SizedBox(height: 20),
              SizedBox(
                width: 210,
                child: SizedBox(
                  height: 70,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppTheme.yellow,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    onPressed: () async {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const
                                  //getstart()
                                  MyOtp()));
                      // await FirebaseAuth.instance.verifyPhoneNumber(
                      //          phoneNumber: '${countrycode.text + phone}',
                      //     // phoneNumber: phone,
                      //     verificationCompleted: (PhoneAuthCredential credential) {},
                      //     verificationFailed: (FirebaseAuthException e) {},
                      //     codeSent: (String verificationId, int? resendToken) {
                      //       TabPhone.verify = verificationId;
                      //       // Navigator.pushNamed(context, " VerifyOTPScreen");
                      //       Navigator.push(
                      //           context,
                      //           MaterialPageRoute(
                      //               builder: (context) => const
                      //                   //getstart()
                      //                   MyOtp()));
                      //     },
                      //     codeAutoRetrievalTimeout: (String verificationId) {},
                      //   );
                      // Navigator.pushNamed(context, "otp");
                    },
                    child: const Text(
                      'Send Code',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 18),
                    ),
                  ),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
//=================

    // Container(
    //           alignment: Alignment.centerLeft,
    //           child: Column(
    //             children: [
    //               Container(
    //                 child: const Text(
    //                   'Code',
    //                   style: TextStyle(
    //                       color: Colors.black,
    //                       fontSize: 25,
    //                       fontWeight: FontWeight.bold),
    //                 ),
    //               ),
    //               Container(
    //                 decoration: BoxDecoration(
    //                   borderRadius: BorderRadius.circular(20),
    //                   color: AppTheme.yellow,
    //                 ),
    //                 alignment: Alignment.centerLeft,
    //                 width: 70,
    //                 height: 8,
    //                 child: const Text(
    //                   '',
    //                   style: TextStyle(
    //                       color: Colors.black,
    //                       fontSize: 25,
    //                       fontWeight: FontWeight.bold),
    //                 ),
    //               ),
    //             ],
    //           ),
    //         )