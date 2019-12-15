import 'package:flutter/material.dart';

class DefaultTabBar extends StatelessWidget {

  final Function onTap;
  final int currentIndex;

  DefaultTabBar({
    @required this.onTap,
    @required this.currentIndex,
  });

  final _tabs = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      title: Column(
        children: <Widget>[SizedBox(height: 2), Text('Inicio')],
      ),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.search),
      title: Column(
        children: <Widget>[SizedBox(height: 2), Text('Buscar')],
      ),
    ),
    // BottomNavigationBarItem(
    //   icon: Icon(Icons.view_comfy),
    //   title: Column(
    //     children: <Widget>[SizedBox(height: 2), Text('Sua Biblioteca')],
    //   ),
    // ),
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      backgroundColor: Theme.of(context).accentColor,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white38,
      selectedFontSize: 10,
      unselectedFontSize: 10,
      items: _tabs,
    );
  }
}
