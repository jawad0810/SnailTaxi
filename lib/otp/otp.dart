import 'package:flutter/material.dart';

import 'package:pinput/pinput.dart';
import 'package:snail_taxi_app/find_password/Find_password.dart';
import 'package:snail_taxi_app/onboarding/utils/app_theme.dart';

class MyOtp extends StatefulWidget {
  const MyOtp({super.key});

  @override
  State<MyOtp> createState() => _MyOtpState();
}

class _MyOtpState extends State<MyOtp> {
  // static final FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    var code = "";
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
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
                        'Code',
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
                alignment: Alignment.center,
                child: const Text(
                  'Verification code was sent to ',
                  style: TextStyle(fontSize: 22),
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppTheme
                          .grey, // Assuming AppTheme.grey is a Color object
                    ),
                    width: 250,
                    alignment: Alignment.center,
                    child: const Text(
                      '+1 (205) 555-0123',
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.edit), // Change the icon as needed
                    onPressed: () {
                      // Add your onPressed functionality here
                      // For example, you can navigate to a new screen or perform some action
                      // when the IconButton is pressed.
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),

              Container(
                child: Pinput(
                  length: 4,
                  showCursor: true,
                  onChanged: (value) {
                    code = value;
                  },
                ),
              ),
              const SizedBox(height: 50),
              const SizedBox(
                height: 50,
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Resend code in',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '00:16',
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 50),
              SizedBox(
                width: 210,
                child: SizedBox(
                  height: 70,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppTheme.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    onPressed: () async {
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
                      'Resend',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppTheme.greyColor,
                          fontSize: 18),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
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
                              builder: (context) => const FindPAsswordPage()
                              //getstart()
                              //MyOtp()
                              ));
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
              )

              // SizedBox(
              //   height: 45,
              //   width: double.infinity,
              //   child: ElevatedButton(
              //     // onPressed: () async {
              //     //   try {
              //     //     await FirebaseService.verifyOTP(context, otpCode: code);
              //     //   }

              //     //====================================================
              //     onPressed: () async {
              //       // try {
              //       //   // Create a PhoneAuthCredential with the code
              //       //   PhoneAuthCredential credential =
              //       //       PhoneAuthProvider.credential(
              //       //           verificationId: TabPhone.verify, smsCode: code);

              //       //   // Sign the user in (or link) with the credential
              //       //   await auth.signInWithCredential(credential);
              //       //   // Navigator.pushNamedAndRemoveUntil(context, '', (route) => false);
              //       //   Navigator.push(
              //       //       context,
              //       //       MaterialPageRoute(
              //       //           builder: (context) => const
              //       //               //getstart()
              //       //               SignUpScreen()));
              //       // } catch (error) {
              //       //   // Handle the error here, e.g., show a snackbar or display an error message.
              //       //   print('Error: $error');
              //       // }
              //     },

              //     style: ElevatedButton.styleFrom(
              //       backgroundColor: AppTheme.kPrimaryColor,
              //       shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(30),
              //       ),
              //     ),
              //     child: const Text(
              //       'SUBMIT',
              //       style: TextStyle(
              //         color: Colors.white,
              //       ),
              //     ),
              //   ),
              // )

              //   SizedBox(
              //     height: 45,
              //     width: double.infinity,
              //     child: ElevatedButton(
              //  //----------------------------------------------------------------------------

              //         onPressed: () async =>
              //             FirebaseService.verifyOTP(context, otpCode: code),
              //         child: const Text('Verify')),
              //   )
            ],
          ),
        ),
      ),
    );
  }
}
