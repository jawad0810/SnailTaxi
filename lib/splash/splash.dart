import 'package:flutter/material.dart';
import 'package:snail_taxi_app/onboarding/onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _redirectToOnboarding();
  }

  void _redirectToOnboarding() async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (_) => Onbording(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.loose,
        children: [
          Center(
            child: Image.asset(
              "assets/images/logo.jpeg",
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
