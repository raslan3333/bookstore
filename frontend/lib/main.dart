import 'package:frontend/screens/sign_up.dart';
import 'package:frontend/screens/test_page.dart';
import 'package:frontend/shared/b_s_theme_data.dart';
import 'package:frontend/providers/nav_provider.dart';
import 'package:frontend/screens/home.dart';
import 'package:frontend/screens/login.dart';
import 'package:frontend/screens/profile.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => NavProvider(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => TestPage(),
        '/hp': (context) => Home(),
        '/profile': (context) => Profile(),
        '/signup': (context) => SignUp(),
      },
      title: 'Flutter Demo',
      theme: bsThemeData(),
    );
  }
}
