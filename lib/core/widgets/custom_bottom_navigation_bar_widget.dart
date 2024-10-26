
import 'package:flutter/material.dart';


class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTabSelected;

  const CustomBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: onTabSelected,
      showUnselectedLabels: false,
      //selectedItemColor: MyTheme.lightPrimary,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Tasks'),
        BottomNavigationBarItem(
            icon: Icon(Icons.check_circle_outline_outlined), label: 'Done'),
        BottomNavigationBarItem(
            icon: Icon(Icons.archive_outlined), label: 'Archived'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
      ],
    );
  }
}
