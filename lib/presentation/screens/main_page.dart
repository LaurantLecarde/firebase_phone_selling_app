import 'package:firebase_phone_selling_app/constants/bottom_screens.dart';
import 'package:firebase_phone_selling_app/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

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
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton:
            _floatNotNeed() ? SizedBox() : _floatingActionButton());
  }

  _floatingActionButton() {
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
      shape: CircularNotchedRectangle(),
      notchMargin: 8.0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: Icon(CupertinoIcons.chat_bubble_2),
            onPressed: ()  =>_animateToPage(0)
          ),
          IconButton(
            icon: Icon(
              Icons.android,
              color: CupertinoColors.activeGreen,
            ),
            onPressed: ()  =>_animateToPage(1)
          ),
          IconButton(
            icon: Icon(Icons.apple),
            onPressed: ()  =>_animateToPage(2)
          ),
          IconButton(
            icon: Icon(CupertinoIcons.person),
            onPressed: () =>_animateToPage(3)
          ),
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

