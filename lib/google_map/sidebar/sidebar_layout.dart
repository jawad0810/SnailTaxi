import 'package:flutter/material.dart';
import 'package:snail_taxi_app/google_map/sidebar/sidebar.dart';

class SideBarLayout extends StatelessWidget {
  const SideBarLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: <Widget>[
          // HomePage(),
          SideBar(),
        ],
      ),
    );
  }
}
