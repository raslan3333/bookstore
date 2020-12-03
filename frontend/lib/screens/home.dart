import 'package:frontend/providers/nav_provider.dart';
import 'package:frontend/screens/cart.dart';
import 'package:frontend/screens/profile.dart';
import 'package:frontend/widgets/b_s_appbar.dart';
import 'package:frontend/widgets/b_s_bottom_appbar.dart';
import 'package:frontend/widgets/b_s_homebody.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  final _tabPages = <Widget>[
    BSHomebody(),
    Cart(),
    Center(
      child: Icon(CupertinoIcons.heart),
    ),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: context.watch<NavProvider>().hasAppBar ? BSAppbar(context).build(context) : null,
      body: _tabPages[context.watch<NavProvider>().pageIndex],
      extendBody: true,
      bottomNavigationBar: BSBottomAppbar(),
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


