import 'package:flutter/material.dart';
import 'package:snail_taxi_app/find_password/password_recover.dart';
import 'package:snail_taxi_app/onboarding/utils/app_theme.dart';

class FindPAsswordPage extends StatefulWidget {
  const FindPAsswordPage({super.key});

  @override
  State<FindPAsswordPage> createState() => _FindPAsswordPageState();
}

class _FindPAsswordPageState extends State<FindPAsswordPage> {
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
                  'Find Password',
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
                        'Options',
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
              Container(
                height: 200,
                width: 200,
                //color: Colors.red,
                child: Image.asset(
                  "assets/images/finderImage.png",
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              Container(
                alignment: Alignment.center,
                child: const Text(
                  'Please select option to send link reset password',
                  style: TextStyle(fontSize: 22),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  print('email buttn');
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const
                              //getstart()
                              PasswordRecoverPage()));
                  // Handle the tap event here
                  // For example, you can navigate to another screen or perform some action
                },
                child: SizedBox(
                  height: 100,
                  width: 450,
                  child: Image.asset(
                    "assets/images/Reset via email.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                // color: Colors.green,
                height: 2,
                width: 300,
                child: Image.asset(
                  "assets/images/Line2.png",
                  fit: BoxFit.fill,
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("sms");
                  // Handle the tap event here
                  // For example, you can navigate to another screen or perform some action
                },
                child: SizedBox(
                  height: 100,
                  width: 450,
                  child: Image.asset(
                    "assets/images/Reset via SMS.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(
                height: 28,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
