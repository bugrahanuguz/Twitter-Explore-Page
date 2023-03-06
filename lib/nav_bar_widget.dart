import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  final int pageIndex;
  final Function(int value) onTap;
  const CustomNavBar({super.key, required this.pageIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabBar(
      iconSize: 32,
      activeColor: Colors.black,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(
          Icons.home,
        )),
        BottomNavigationBarItem(
            icon: Icon(
          Icons.search,
        )),
        BottomNavigationBarItem(
            icon: Icon(
          Icons.notifications_outlined,
        )),
        BottomNavigationBarItem(
            icon: Icon(
          Icons.email_outlined,
        )),
      ],
      onTap: (value) {
        onTap(value);
      },
      currentIndex: pageIndex,
    );
  }
}
