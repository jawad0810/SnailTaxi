import 'package:flutter/material.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';

import 'package:snail_taxi_app/onboarding/utils/app_theme.dart';
import 'package:snail_taxi_app/otp/tabPhone.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  final signUpFormKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController(); // Step 1
  bool isPasswordVisible = false;
  bool success = false;

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
    confirmPasswordController.dispose(); // Step 1
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Container(
            color: Colors.transparent,
            child: renderEmailForm(),
          ),
        ),
      ),
    );
  }

  Widget renderEmailForm() {
    return Form(
      key: signUpFormKey,
      child: Container(
        width: 450,
        height: 450,
        color: Colors.transparent,
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                prefix: Image.asset('assets/images/Line.png'),

                prefixIconColor: Colors.grey,

                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: const BorderSide(color: AppTheme.yellow)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: const BorderSide(color: Colors.grey)),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                ),

                labelText: 'Full Name',
                labelStyle: const TextStyle(color: Colors.grey),

                errorStyle:
                    const TextStyle(color: Colors.red), // Set error text color
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.alternate_email),
                prefix: Image.asset('assets/images/Line.png'),

                prefixIconColor: Colors.grey,

                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: const BorderSide(color: AppTheme.yellow)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: const BorderSide(color: Colors.grey)),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                ),

                labelText: 'e-mail-Address',
                labelStyle: const TextStyle(color: Colors.grey),

                errorStyle:
                    const TextStyle(color: Colors.red), // Set error text color
              ),
              validator: (email) {
                final emailRegex =
                    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                if (email != null && !emailRegex.hasMatch(email)) {
                  return 'Enter valid email';
                }
                return null;
              },
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: passwordController,
              obscureText: !isPasswordVisible,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: const BorderSide(color: Colors.grey)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: const BorderSide(color: AppTheme.yellow)),
                border: const OutlineInputBorder(),
                labelText: 'Password...',
                labelStyle: TextStyle(color: Colors.grey),
                prefixIcon: Image.asset('assets/images/Password-Icon.png'),
                suffixIcon: IconButton(
                  color: Colors.grey,
                  icon: Icon(isPasswordVisible
                      ? Icons.visibility_off
                      : Icons.visibility_rounded),
                  onPressed: () => setState(() {
                    isPasswordVisible = !isPasswordVisible;
                  }),
                ),
              ),
            ),
            const SizedBox(height: 5),
            SizedBox(
              height: 80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    // child: TextField(
                    //     controller: passwordController,
                    //     decoration: InputDecoration(
                    //         enabledBorder: OutlineInputBorder(
                    //             borderSide: const BorderSide(
                    //                 color: Color.fromARGB(255, 207, 207, 207),
                    //                 width: 2),
                    //             borderRadius: BorderRadius.circular(5)),
                    //         floatingLabelStyle: GoogleFonts.mPlus1(
                    //           color: Colors.black,
                    //           fontSize: 18,
                    //         ),
                    //         focusedBorder: OutlineInputBorder(
                    //           borderSide: BorderSide(
                    //               color: success ? Colors.green : Colors.red,
                    //               width: 2),
                    //           borderRadius: BorderRadius.circular(15),
                    //         ),
                    //         hintText: "Password",
                    //         hintStyle: GoogleFonts.mPlus1(color: Colors.black),
                    //         border: const OutlineInputBorder(
                    //             borderSide: BorderSide()))),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        // color: Colors.red,
                        child: Row(
                          children: [
                            FlutterPwValidator(
                              defaultColor: Colors.grey.shade300,
                              controller: passwordController,
                              successColor: Colors.green.shade700,

                              minLength: 6,
                              uppercaseCharCount: 2,
                              // numericCharCount: 3,
                              // specialCharCount: 1,
                              // normalCharCount: 3,
                              width: 210,
                              height: 40,
                              onSuccess: () {
                                setState(() {
                                  success = true;
                                });
                              },
                              onFail: () {
                                setState(() {
                                  success = false;
                                });
                              },
                            ),
                            // Container(
                            //   height: 20,
                            //   width: 50,
                            //   child: Text(
                            //     'Strong',
                            //     style: TextStyle(fontWeight: FontWeight.bold),
                            //   ),
                            // )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        // color: Colors.green,
                        height: 20,
                        width: 50,
                        child: const Text(
                          'Strong',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // const SizedBox(height: 20),
            SizedBox(
              width: 200,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppTheme.yellow,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                onPressed: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const
                              //getstart()
                              // MyOtp()
                              TabPhone()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
