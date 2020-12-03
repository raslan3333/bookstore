
import 'package:frontend/providers/nav_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class BSBottomAppbar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final int i = context.watch<NavProvider>().pageIndex;
    Color _color;
    return BottomAppBar(
      elevation: 6,
      shape: CircularNotchedRectangle(),
      color: Colors.white,
      notchMargin: 5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              context.read<NavProvider>().setIndex(0);
              context.read<NavProvider>().setAppBar();
            },
            icon: Icon(
              CupertinoIcons.house_alt,
              color: i == 0
                  ? _color = null
                  : _color = Color(0x17F666D73),
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {
              context.read<NavProvider>().setIndex(1);
              context.read<NavProvider>().setAppBar();
            },
            icon: Icon(
              CupertinoIcons.cart,
              color: i == 1
                  ? _color = null
                  : _color = Color(0x17F666D73),
              size: 30,
            ),
          ),
          SizedBox(
            width: 90,
          ),
          IconButton(
            onPressed: () {
              context.read<NavProvider>().setIndex(2);
              context.read<NavProvider>().setAppBar();
            },
            icon: Icon(
              CupertinoIcons.heart,
              color: i == 2
                  ? _color = null
                  : _color = Color(0x17F666D73),
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {
              context.read<NavProvider>().setIndex(3);
              context.read<NavProvider>().setAppBar();
              // Navigator.pushNamed(context, '/profile');
            },
            icon: Icon(
              CupertinoIcons.person_alt_circle,
              color: i == 3
                  ? _color = null
                  : _color = Color(0x17F666D73),
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}
