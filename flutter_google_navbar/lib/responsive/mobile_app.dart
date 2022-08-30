import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_google_navbar/screens/screen_four.dart';
import 'package:flutter_google_navbar/screens/screen_one.dart';
import 'package:flutter_google_navbar/screens/screen_three.dart';
import 'package:flutter_google_navbar/screens/screen_two.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MobileApp extends StatefulWidget {
  const MobileApp({super.key});

  @override
  State<MobileApp> createState() => _MobileAppState();
}

class _MobileAppState extends State<MobileApp> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: [
          ScreenOne(),
          ScreenTwo(),
          ScreenThree(),
          ScreenFour()
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: EdgeInsets.all(8),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.grey,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade800,
            gap: 8,
            onTabChange: (index) {
              _pageController.jumpToPage(index);
            },
            tabs: [
              GButton(
                icon: CupertinoIcons.home,
                text: 'Home',
              ),
              GButton(
                icon: CupertinoIcons.news,
                text: 'News',
              ),
              GButton(
                icon: CupertinoIcons.profile_circled,
                text: 'Profile',
              ),
              GButton(
                icon: CupertinoIcons.settings,
                text: 'Settings',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
