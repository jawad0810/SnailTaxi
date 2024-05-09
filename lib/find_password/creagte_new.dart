import 'package:flutter/material.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';
import 'package:snail_taxi_app/Menu_page/home.dart';
import 'package:snail_taxi_app/onboarding/utils/app_theme.dart';

class CreateNewPage extends StatefulWidget {
  const CreateNewPage({super.key});

  @override
  State<CreateNewPage> createState() => _CreateNewPageState();
}

class _CreateNewPageState extends State<CreateNewPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  bool isPasswordVisible = false;
  bool success = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 2,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Create new',
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
                        'Password',
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
                height: 30,
              ),
              const SizedBox(
                height: 28,
              ),
              Container(
                alignment: Alignment.center,
                child: const Text(
                  'Create strong and secure password that protect account',
                  style: TextStyle(fontSize: 22),
                ),
              ),
              const SizedBox(
                height: 70,
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
                    ),
                    const SizedBox(
                      height: 20,
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
                                numericCharCount: 3,
                                // specialCharCount: 1,
                                // normalCharCount: 3,
                                width: 210,
                                height: 60,
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
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 30,
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
              const SizedBox(
                height: 50,
              ),
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
                    'Save',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () async {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AccountPage()
                            //getstart()
                            //  NotificationPage()
                            ));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
