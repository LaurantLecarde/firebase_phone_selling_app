import 'dart:ui';

import 'package:firebase_phone_selling_app/constants/bottom_screens.dart';
import 'package:firebase_phone_selling_app/constants/themes/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  bool _containerTapped1 = false;

  _floatNotNeed() {
    if (_selectedIndex == 0 || _selectedIndex == 3) {
      return true;
    } else {
      return false;
    }
  }

  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _selectedIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: mainTheme(context),
        body: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          children: bottomScreens,
        ),
        bottomNavigationBar: _bottom(),
        floatingActionButton:
            _floatNotNeed() ? SizedBox() : _floatingActionButton());
  }

  _floatingActionButton() {
    var size = MediaQuery.of(context).size;
    return FloatingActionButton(
      tooltip: "E'lon Berish",
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1000)),
      elevation: 0,
      onPressed: () {},
      child: Icon(Icons.add),
    );
  }

  _bottom() {
    var size = MediaQuery.of(context).size;
    return BottomAppBar(
      elevation: 0,
      shape: const CircularNotchedRectangle(),
      notchMargin: 8.0,
      child: SizedBox(
        height: size.height / 25,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            _bottomItemBuild(
              condition: _selectedIndex == 0,
              icon: const Icon(CupertinoIcons.chat_bubble_2),
              onPressed: () {
                _animateToPage(0);
              },
              name: 'Chat',
            ),
            _bottomItemBuild(
              condition: _selectedIndex == 1,
              icon: const Icon(
                Icons.android,
              ),
              onPressed: () {
                _animateToPage(1);
              },
              iconColor: CupertinoColors.activeGreen,
              name: 'Android',
            ),
            _bottomItemBuild(
                condition: _selectedIndex == 2,
                icon: const Icon(Icons.apple),
                onPressed: () {
                  _animateToPage(2);
                },
                name: 'Iphone'),
            _bottomItemBuild(
              condition: _selectedIndex == 3,
              icon: const Icon(CupertinoIcons.person),
              onPressed: () {
                _animateToPage(3);
              },
              name: 'Profil',
            ),
          ],
        ),
      ),
    );
  }

  _bottomItemBuild(
      {required bool condition,
      required Widget icon,
      required void Function()? onPressed,
      required String name,
      Color iconColor = Colors.black}) {
    var size = MediaQuery.of(context).size;
    return AnimatedContainer(
      padding: const EdgeInsets.all(2),
      height: size.width / 20,
      width: size.width / 4,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: condition ? Colors.lightBlue.shade400 : Colors.transparent),
      duration: const Duration(milliseconds: 700),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          IconButton(
            icon: icon,
            onPressed: onPressed,
            color: condition ? Colors.white : iconColor,
          ),
          condition
              ? Center(
                  child: Text(name,
                      style: TextStyle(
                          fontSize: size.width / 28,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                )
              : const SizedBox()
        ],
      ),
    );
  }

  void _animateToPage(int pageIndex) {
    _pageController.animateToPage(
      pageIndex,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
