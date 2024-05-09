import 'package:flutter/material.dart';

import 'package:snail_taxi_app/onboarding/utils/app_theme.dart';
import 'package:snail_taxi_app/login/sign_up.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  bool isSwitched = false;

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
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        //  physics: const NeverScrollableScrollPhysics(),
        child: Stack(
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height,
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 150,
                      width: 250,
                      child: Image.asset("assets/images/snaiollogo.png"),
                    ),
                    // const SizedBox(height: 1),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        // child: renderEmailForm(),
                        child: authTabbar(),
                      ),
                      // child: authTabbar(),
                    ),
                    //====================================================================
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

//=======================================

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
                  color: AppTheme.grey,
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
                              width: 49,
                            ),
                            Center(
                              child: Text(
                                'Log In',
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
                              width: 50,
                            ),
                            Center(
                              child: Text(
                                'Sign Up',
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
                height: tabController.index == 0 ? 480 : 480,
                child: TabBarView(
                  controller: tabController,
                  children: [
                    renderEmailForm(),
                    const SignUpScreen(),
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

                labelText: 'User Name',
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
                labelStyle: const TextStyle(color: Colors.grey),
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
            const SizedBox(height: 20),
            InkWell(
              onTap: () {},
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppTheme.greyColor,
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(width: 5),
                  // Text(
                  //   'Click here',
                  //   style: TextStyle(
                  //       color: Colors.red, fontWeight: FontWeight.bold),
                  // )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Remember Me text on the left
                const Padding(
                  padding: EdgeInsets.only(right: 130.0),
                  child: Text(
                    'Remember me',
                  ),
                ),
                // Radio button on the right
                Switch(
                    activeColor: AppTheme.yellow,
                    thumbColor: const MaterialStatePropertyAll(Colors.white),
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                      });
                    })
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              child: const Text('or log in with'),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 70,
              width: 220,
              // color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        print('apple');
                        // Handle tap for Apple logo
                      },
                      child: Image.asset('assets/images/AppleLogo.png'),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        print('tweeter');
                        // Handle tap for Twitter logo
                      },
                      child: Image.asset('assets/images/tweeterLogo.png'),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        print('google');
                        // Handle tap for Google logo
                      },
                      child: Image.asset('assets/images/GoogleLogo.png'),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
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
                  'Login',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                onPressed: () async {},
              ),
            ),
            const SizedBox(height: 20),
            // not a memver? register now
          ],
        ),
      ),
    );
  } //=============================================================================

// for Phone render number
  // Widget renderPhoneForm() {
  //   return Form(key: phoneFormKey, child: const TabPhone()
  //       //  IntlPhoneField(
  //       //   controller: phoneController,
  //       //   decoration: const InputDecoration(
  //       //     suffix: Icon(
  //       //       Icons.phone,
  //       //       color: Colors.grey,
  //       //     ),
  //       //     border: OutlineInputBorder(),
  //       //   ),
  //       //   initialCountryCode: 'PK',
  //       //   onChanged: (phone) {
  //       //     debugPrint(phone.completeNumber);
  //       //   },
  //       //   validator: (phone) {
  //       //     final phoneRegex = RegExp(r"^\+?0[0-9]{10}$");
  //       //     if (phone != null && !phoneRegex.hasMatch(phone.completeNumber)) {
  //       //       return 'Enter valid phone';
  //       //     }
  //       //     return null;
  //       //   },
  //       // ),
  //       );
  // }

//=============================================
// for google account pic

  Widget googleLoginBtn() {
    return Center(
      child: InkWell(
        onTap: () async {
          setState(() => isAuthenticating = true);
          // await FirebaseService.loginWithGoogle(context);
          setState(() => isAuthenticating = false);
        },
        child: Container(
          height: 50,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.shade300,
          ),
          child: const Row(
            children: [
              Text('Sign In with'),
              SizedBox(width: 5),
              // SvgPicture.asset(
              //   AppAssets.googleIcon,
              //   height: 25,
              // ),
            ],
          ),
        ),
      ),
    );
  }
//=============================================
// for Apple account pic

  Widget appleLoginBtn() {
    return Center(
      child: SizedBox(
        height: 50,
        width: 50,
        child: InkWell(
          onTap: () {
            debugPrint('Implement Sign In With Apple here');
          },
          child: Container(
            height: 50,
            width: 50,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppTheme.greyColor),
            // child: SvgPicture.asset(
            //   AppAssets.appleIcon,
            //   // ignore: deprecated_member_use
            //   color: Colors.grey.shade300,
            // ),
          ),
        ),
      ),
    );
  }
}
