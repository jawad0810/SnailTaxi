// import 'package:flutter/material.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:snail_taxi_app/Menu_page/clock_page.dart';
// import 'package:snail_taxi_app/Menu_page/drive_page.dart';
// import 'package:snail_taxi_app/Menu_page/home.dart';
// import 'package:snail_taxi_app/Menu_page/message_page.dart';
// import 'package:snail_taxi_app/Menu_page/setting_page.dart';
// import 'package:snail_taxi_app/google_map/sidebar/pages/homepage.dart';
// import 'package:snail_taxi_app/onboarding/utils/app_theme.dart';

// class NotificationPage extends StatefulWidget {
//   const NotificationPage({Key? key}) : super(key: key);

//   @override
//   State<NotificationPage> createState() => _NotificationPageState();
// }

// class _NotificationPageState extends State<Page> {
//   int _currentIndex = 0;

//   final List<Widget> _pages = [
//     // HomePage(),
//     AccountPage(),
//     ClockPage(),
//     DriverPage(),
//     MessagePage(),
//     SettingPage(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppTheme.grey,
//       bottomNavigationBar: CurvedNavigationBar(
//         color: Colors.transparent, // Set background color to transparent
//         buttonBackgroundColor:
//             Colors.white, // Set button background color to transparent
//         backgroundColor: Colors.white, // Set background color to transparent
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//         items: [
//           _buildIcon(Icons.home, 0),
//           _buildIcon(Icons.lock_clock, 1),
//           _buildIcon(Icons.drive_eta, 2),
//           _buildIcon(Icons.chat, 3),
//           _buildIcon(Icons.settings, 4),
//         ],
//       ),
//       //appBar: AppBar(),
//       body: _pages[_currentIndex],
//     );
//   }

//   Widget _buildIcon(IconData icon, int index) {
//     final isSelected = index == _currentIndex;
//     return Container(
//       decoration: BoxDecoration(
//         color: isSelected ? AppTheme.yellow : Colors.transparent,
//         shape: BoxShape.circle,
//         boxShadow: isSelected
//             ? [
//                 BoxShadow(
//                   color: AppTheme.yellow,
//                   blurRadius: 15,
//                   spreadRadius: 2,
//                   offset: Offset(0, 0),
//                 ),
//               ]
//             : null,
//       ),
//       padding: EdgeInsets.symmetric(
//         vertical: isSelected ? 5 : 3,
//         horizontal: isSelected ? 10 : 8,
//       ),
//       child: Icon(
//         icon,
//         size: isSelected ? 30 : 24,
//         color: isSelected ? Colors.black : Colors.grey,
//       ),
//     );
//   }

// //=========================
//   // Widget _buildIcon(IconData icon, int index) {
//   //   final isSelected = index == _currentIndex;
//   //   return Container(
//   //     decoration: BoxDecoration(
//   //       color: isSelected ? AppTheme.yellow : Colors.transparent,
//   //       shape: BoxShape.circle,
//   //     ),
//   //     padding: EdgeInsets.symmetric(
//   //       vertical: isSelected ? 5 : 3,
//   //       horizontal: isSelected ? 10 : 8,
//   //     ),
//   //     // Adjust padding as needed
//   //     child: Icon(
//   //       icon,
//   //       size: isSelected ? 30 : 24,
//   //       color: isSelected ? Colors.black : Colors.grey,
//   //     ),
//   //   );
//   // }
// }
