import 'package:frontend/screens/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BSBottomNavBar extends StatefulWidget {
  BSBottomNavBar({Key key}) : super(key: key);

  @override
  _BSBottomNavBarState createState() => _BSBottomNavBarState();
}

class _BSBottomNavBarState extends State<BSBottomNavBar> {
  int _currentTabIndex = 0;
  final _tabPages = <Widget> [
    Center(child: Icon(Icons.add),),
    Home(),
    Center(child: Icon(Icons.ac_unit),),
  ];


  @override
  Widget build(BuildContext context) {
    final _bsBottomNavBarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Hello',),
      BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Hello'),
      BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: 'Hello'),
    ];

    final bottomNavBar = BottomNavigationBar(

      items: _bsBottomNavBarItems,
      currentIndex: _currentTabIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          _currentTabIndex = index;
        });
      },
    );
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: _tabPages[_currentTabIndex],
      bottomNavigationBar: bottomNavBar,
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 2,
        child: Container(
            margin: EdgeInsets.only(bottom: 3, left: 3),
            child: Icon(
              CupertinoIcons.play_arrow_solid,
              size: 24,
              color: Colors.blueGrey[800],
            )),

        onPressed: () {},
      ),
    );
  }
}