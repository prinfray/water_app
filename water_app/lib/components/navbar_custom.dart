import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTap;

  const CustomNavBar({super.key, required this.selectedIndex, required this.onItemTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          buildNavBarItem(Icons.home, 0),
          buildNavBarItem(Icons.calendar_today, 1),
          buildNavBarItem(Icons.settings, 2),
        ],
      ),
    );
  }

  Widget buildNavBarItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () => onItemTap(index),
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: selectedIndex == index ? Colors.blue : Colors.transparent,
        ),
        child: Icon(
          icon,
          color: selectedIndex == index ? Colors.white : Colors.grey,
        ),
      ),
    );
  }
}
