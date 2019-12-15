import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify/src/providers/tabs_provider.dart';
import 'package:spotify/src/screens/home_screen.dart';
import 'package:spotify/src/screens/search_screen.dart';
import 'package:spotify/src/widgets/default_tab_bar.dart';

class TabScreen extends StatelessWidget {
  final List<Widget> _screens = [
    HomeScreen(),
    SearchScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final tabsProvider = Provider.of<TabsProvider>(context);
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        bottomNavigationBar: DefaultTabBar(
          onTap: (index) {
            tabsProvider.setCurrentIndex(index);
          },
          currentIndex: tabsProvider.currentIndex,
        ),
        body: IndexedStack(
          children: _screens,
          index: tabsProvider.currentIndex,
        ),
      ),
    );
  }
}