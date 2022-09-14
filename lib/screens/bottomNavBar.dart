import 'package:flutter/material.dart';

import 'homePage.dart';


class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedPage = 0;
  final _pageOptions = [
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pageOptions[selectedPage],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          // selectedItemColor: Color(0xff4d0000),
          elevation: 3.0,
          currentIndex: selectedPage,
          items: [
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.home,
                color:Colors.grey.shade800,
              ),
              icon: Icon(Icons.home_outlined, color: Colors.black38),
              label: "home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border_outlined,
                color: Colors.black38,
              ),
              activeIcon: Icon(
                Icons.favorite,
                color: Colors.grey.shade800,
              ),
              label: "favorites",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.camera_alt_outlined,
                color: Colors.black38,
              ),
              activeIcon: Icon(
                Icons.camera_alt_rounded,
                color: Colors.grey.shade800,
              ),
              label: "Sell",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline, color: Colors.black38),
              activeIcon: Icon(
                Icons.person,
                color: Colors.grey.shade800,
              ),
              label:"Profile",
            ),
          ],
          onTap: (index) async {
              setState(() {
                selectedPage = index;
              });
          }),
    );
  }
}
