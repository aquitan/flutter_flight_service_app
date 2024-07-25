

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gethigh/router/router.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: AutoTabsRouter(
        routes: const [
          SearchRoute(),
          HotRoute(),
          HistoryRoute(),
          ProfileRoute(),
        ],
        builder: (context, child) {
          final tabsRouter = AutoTabsRouter.of(context);
          return Scaffold(
            body: child,
            bottomNavigationBar: BottomNavigationBar(
              selectedItemColor: theme.primaryColor,
              unselectedItemColor: theme.hintColor,
              selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w700),
              currentIndex: tabsRouter.activeIndex,
              onTap: (index) =>  _openPage(index, tabsRouter),
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.hot_tub), label: 'Hot'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.history), label: 'History'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: 'Profile'),
              ],
            ),
          );
        },
      ),

    );
  }

  void _openPage(int index, TabsRouter tabsRouter) {
    tabsRouter.setActiveIndex(index);
  }
}


