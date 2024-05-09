import 'package:flutter/material.dart';
import 'package:snail_taxi_app/find_password/creagte_new.dart';
import 'package:snail_taxi_app/onboarding/utils/app_theme.dart';

class PasswordRecoverPage extends StatefulWidget {
  const PasswordRecoverPage({super.key});

  @override
  State<PasswordRecoverPage> createState() => _PasswordRecoverPageState();
}

class _PasswordRecoverPageState extends State<PasswordRecoverPage> {
  final emailController = TextEditingController();
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
              SizedBox(
                height: 2,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Password',
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
                        'Recovery',
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
              SizedBox(
                height: 30,
              ),
              Container(
                height: 200,
                width: 200,
                //color: Colors.red,
                child: Image.asset(
                  "assets/images/passwordRecovery.png",
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              Container(
                alignment: Alignment.center,
                child: const Text(
                  'Please enter youremail to recover your password',
                  style: TextStyle(fontSize: 22),
                ),
              ),
              SizedBox(
                height: 70,
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

                  labelText: 'e-mail Address',
                  labelStyle: const TextStyle(color: Colors.grey),

                  errorStyle: const TextStyle(
                      color: Colors.red), // Set error text color
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
                    'Send Link',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () async {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const
                                //getstart()
                                CreateNewPage()));
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
