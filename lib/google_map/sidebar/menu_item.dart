import 'package:flutter/material.dart';
import 'package:snail_taxi_app/onboarding/utils/app_theme.dart';

class MenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function onTap;
  final IconData icon2;
  final int? showamount;

  const MenuItem(
      {required this.icon,
      required this.title,
      required this.onTap,
      required this.icon2,
      this.showamount});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // ignore: avoid_print
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                color: AppTheme.light, // Set background color to yellow
                shape:
                    BoxShape.circle, // Assuming you want a circular background
              ),
              child: Icon(
                icon,
                color: Colors.black,
                size: 30,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              title,
              style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.black),
            ),
            const Spacer(),
            Container(
              child: Icon(
                icon2,
                color: Colors.grey,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
