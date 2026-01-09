import 'dart:ui';
import 'package:dcex/routes/router_consts.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainBottomTabbar extends StatelessWidget {
  const MainBottomTabbar({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          navigationShell,
          AnimatedPositioned(
            duration: const Duration(milliseconds: 250),
            curve: Curves.easeOutCubic,
            left: 16,
            right: 16,
            bottom: 0,
            child: SafeArea(
              top: false,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 200),
                opacity: _isTopLevel(context) ? 1.0 : 0.0,
                child: _GlassTabBar(
                  currentIndex: navigationShell.currentIndex,
                  onTap: (index) {
                    navigationShell.goBranch(
                      index,
                      initialLocation: index == navigationShell.currentIndex,
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 判断是否在顶级页面
  bool _isTopLevel(BuildContext context) {
    final location = GoRouterState.of(context).uri.toString();

    final topLevelRoutes = [
      RouterConsts.home,
      RouterConsts.search,
      RouterConsts.settings,
    ];
    return topLevelRoutes.any((route) => location == route);
  }
}

class _GlassTabBar extends StatelessWidget {
  const _GlassTabBar({required this.currentIndex, required this.onTap});

  final int currentIndex;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    final selectedColor = Colors.blueAccent.shade200;
    final unselectedColor = Colors.black38;

    return ClipRRect(
      borderRadius: BorderRadius.circular(32),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        child: Container(
          height: 64,
          decoration: BoxDecoration(
            color: Colors.black.withValues(alpha: 0.05),
            borderRadius: BorderRadius.circular(32),
            border: Border.all(color: Colors.white.withValues(alpha: 0.15)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _TabItem(
                icon: Icons.home,
                index: 0,
                currentIndex: currentIndex,
                onTap: onTap,
                selectedColor: selectedColor,
                unselectedColor: unselectedColor,
              ),
              _TabItem(
                icon: Icons.search,
                index: 1,
                currentIndex: currentIndex,
                onTap: onTap,
                selectedColor: selectedColor,
                unselectedColor: unselectedColor,
              ),
              _TabItem(
                icon: Icons.settings,
                index: 2,
                currentIndex: currentIndex,
                onTap: onTap,
                selectedColor: selectedColor,
                unselectedColor: unselectedColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TabItem extends StatelessWidget {
  const _TabItem({
    required this.icon,
    required this.index,
    required this.currentIndex,
    required this.onTap,
    required this.selectedColor,
    required this.unselectedColor,
  });

  final IconData icon;
  final int index;
  final int currentIndex;
  final ValueChanged<int> onTap;
  final Color selectedColor;
  final Color unselectedColor;

  bool get isSelected => index == currentIndex;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () => onTap(index),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeOut,
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        decoration: BoxDecoration(
          color: isSelected
              ? Colors.white.withValues(alpha: 0.18)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Icon(
          icon,
          size: 22,
          color: isSelected ? selectedColor : unselectedColor,
        ),
      ),
    );
  }
}
