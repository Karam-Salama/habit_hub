import 'package:flutter/material.dart';
import 'package:habit_hub/core/utils/strings.dart';

import 'archived_tasks_tap.dart';
import 'done_tasks_tap.dart';
import 'new_tasks_tap.dart';
import 'setting_tap.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  int selectedIndex = 0;
  List taps = const [NewTasks(), DoneTasks(), ArchivedTasks(), SettingTap()];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text(AppStrings.appName)),
      body: taps[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: theme.bottomNavigationBarTheme.backgroundColor,
            icon: const Icon(Icons.menu),
            label: 'Tasks',
          ),
          BottomNavigationBarItem(
            backgroundColor: theme.bottomNavigationBarTheme.backgroundColor,
            icon: const Icon(Icons.check_circle_outline_outlined),
            label: 'Done',
          ),
          BottomNavigationBarItem(
            backgroundColor: theme.bottomNavigationBarTheme.backgroundColor,
            icon: const Icon(Icons.archive_outlined),
            label: 'Archived',
          ),
          BottomNavigationBarItem(
            backgroundColor: theme.bottomNavigationBarTheme.backgroundColor,
            icon: const Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}








