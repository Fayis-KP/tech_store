import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prjct2/screens/home.dart';

class Navication extends StatefulWidget {
   Navication({Key? Key}): super(key:Key);

  @override
  State<Navication> createState() => _NavicationState();
}

class _NavicationState extends State<Navication> {

  int selectedIndex = 0;
  List<Widget> pages = [
    Home(),

  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/homeButton.png",
              height: 45,
              width: 31,
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/like.png",
              height: 45,
              width: 31,
            ),
          ),
         BottomNavigationBarItem(
             icon: Image.asset(
                 "assets/cart.png",
             height: 45,
             width: 31,
             ),
         ),
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/man.png",
                height: 45,
                width: 31,))

        ],
      ),
    );
  }
}
