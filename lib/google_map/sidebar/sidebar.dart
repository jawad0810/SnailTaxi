import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rxdart/subjects.dart';
import 'package:snail_taxi_app/google_map/sidebar/menu_item.dart';
import 'package:snail_taxi_app/google_map/sidebar/pages/history.dart';
import 'package:snail_taxi_app/onboarding/utils/app_theme.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar>
    with SingleTickerProviderStateMixin<SideBar> {
  late AnimationController _animationController;
  late StreamController<bool> isSidebarOpenedStreamController;
  late Stream<bool> isSidebarOpenedStream;
  late StreamSink<bool> isSidebarOpenedSink;
  // final bool isSidebarOpened = false;
  final _animationDuration = const Duration(microseconds: 500);

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: _animationDuration);
    isSidebarOpenedStreamController = PublishSubject<bool>();
    isSidebarOpenedStream = isSidebarOpenedStreamController.stream;
    isSidebarOpenedSink = isSidebarOpenedStreamController.sink;
  }

  @override
  void dispose() {
    _animationController.dispose();
    isSidebarOpenedStreamController.close();
    isSidebarOpenedSink.close();
    super.dispose();
  }

  void onIconPressed() {
    final animationstatus = _animationController.status;
    final isAnimationCompleted = animationstatus == AnimationStatus.completed;

    if (isAnimationCompleted) {
      isSidebarOpenedSink.add(false);
      _animationController.reverse();
    } else {
      _animationController.forward();
      isSidebarOpenedSink.add(true);
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return StreamBuilder<bool>(
      initialData: false,
      stream: isSidebarOpenedStream,
      builder: (context, isSideBarOpenedAsync) {
        final bool isSidebarOpened = isSideBarOpenedAsync.data ?? false;
        final double leftValue = isSidebarOpened ? 0 : -screenWidth;
        final double rightValue = isSidebarOpened ? 0 : screenWidth - 45;

        return AnimatedPositioned(
          top: 0,
          bottom: 0,
          left: leftValue,
          right: rightValue,
          duration: _animationDuration,
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    color: Colors.white,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 100,
                        ),
                        GestureDetector(
                          onTap: () {
                            // Handle onTap for the first item
                          },
                          child: ListTile(
                            title: const Text(
                              "Alex Hales",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            subtitle: const Text(
                              '+46 16 755 7287',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                            leading: Stack(
                              children: [
                                Container(
                                  height: 150,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      'assets/images/logo.jpeg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  top: 0,
                                  right: 0,
                                  child: Icon(
                                    Icons.change_circle,
                                    color: Colors.grey,
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        GestureDetector(
                          onTap: () {
                            // print('email buttn');
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => const
                            //             //getstart()
                            //             HomePage()));
                          },
                          child: Container(
                            // color: Colors.red,
                            child: MenuItem(
                              onTap: () {
                                print('email buttn');
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const
                                            //getstart()
                                            HistoryPage()));
                              },
                              icon: Icons.wallet,
                              title: "Wallet",
                              icon2: Icons.arrow_forward_ios,
                            ),
                          ),
                        ),
                        const Divider(
                          height: 1,
                          thickness: 0.5,
                          color: AppTheme.grey,
                          indent: 12,
                          endIndent: 22,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const
                                        //getstart()
                                        HistoryPage()));
                          },
                          child: Container(
                            // color: Colors.blue,
                            child: MenuItem(
                              onTap: () {},
                              icon: Icons.history,
                              title: "History",
                              icon2: Icons.arrow_forward_ios,
                            ),
                          ),
                        ),
                        const Divider(
                          height: 1,
                          thickness: 0.5,
                          color: AppTheme.grey,
                          indent: 12,
                          endIndent: 22,
                        ),
                        MenuItem(
                          onTap: () {},
                          icon: Icons.payment,
                          title: "Payment",
                          icon2: Icons.arrow_forward_ios,
                        ),
                        const Divider(
                          height: 1,
                          thickness: 0.5,
                          color: AppTheme.grey,
                          indent: 12,
                          endIndent: 22,
                        ),
                        MenuItem(
                          onTap: () {},
                          icon: Icons.drive_eta_rounded,
                          title: "Become a Driver",
                          icon2: Icons.arrow_forward_ios,
                        ),
                        const Divider(
                          height: 1,
                          thickness: 0.5,
                          color: AppTheme.grey,
                          indent: 12,
                          endIndent: 22,
                        ),
                        MenuItem(
                          onTap: () {},
                          icon: Icons.settings,
                          title: "Setting",
                          icon2: Icons.arrow_forward_ios,
                        ),
                        const Divider(
                          height: 1,
                          thickness: 0.5,
                          color: AppTheme.grey,
                          indent: 12,
                          endIndent: 22,
                        ),
                        MenuItem(
                          onTap: () {},
                          icon: Icons.person,
                          title: "Invite Friends",
                          icon2: Icons.arrow_forward_ios,
                        ),
                      ],
                    )),
              ),
              Align(
                alignment: const Alignment(0, 0.7),
                child: GestureDetector(
                  onTap: () {
                    onIconPressed();
                  },
                  child: ClipPath(
                    clipper: CustomMenuClipper(),
                    child: Container(
                      width: 35,
                      height: 110,
                      color: Colors.white,
                      alignment: Alignment.centerLeft,
                      child: AnimatedIcon(
                        progress: _animationController.view,
                        icon: AnimatedIcons.menu_close,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

class CustomMenuClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Paint paint = Paint();
    paint.color = Colors.white;
    final width = size.width;
    final height = size.height;

    Path path = Path();
    path.moveTo(0, 0);
    path.quadraticBezierTo(0, 8, 10, 16);
    path.quadraticBezierTo(width - 1, height / 2 - 20, width, height / 2);
    path.quadraticBezierTo(width + 1, height / 2 + 20, 10, height - 16);
    path.quadraticBezierTo(0, height - 8, 0, height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
