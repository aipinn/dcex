import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainBottomTabbar extends StatefulWidget {
  const MainBottomTabbar({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;
  @override
  State<MainBottomTabbar> createState() => _MainBottomTabbarState();
}

class _MainBottomTabbarState extends State<MainBottomTabbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: widget.navigationShell.currentIndex,
        selectedItemColor: const Color.fromARGB(255, 248, 148, 206),
        unselectedItemColor: const Color.fromARGB(255, 154, 155, 155),
        onTap: (value) {
          widget.navigationShell.goBranch(
            value,
            initialLocation: value == widget.navigationShell.currentIndex,
          );
        },
      ),
    );
  }
}
