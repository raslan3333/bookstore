import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;




class User {

  final int id;
   String username;
  List<dynamic> mymap;
  User({this.id, this.username});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      username: json['username'],
    );
  }

  Future<dynamic> fetchUser() async {
    var dio = Dio();
    Response response = await dio.get('http://10.0.2.2:3333/user');
    mymap=response.data;
    return mymap;
  }
}
/*class User {

  final int id;
  final String username;

  User({this.id, this.username});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      username: json['username'],
    );
  }
}*/

class TestPage extends StatefulWidget {
  TestPage({Key key}) : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  User user;
  @override
  void initState() {
    super.initState();
     user = User();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<dynamic>(
          future: user.fetchUser(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text('${snapshot.data[0]["username"]}');
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }

            // By default, show a loading spinner.
            return CircularProgressIndicator();
          },
        ),
        ),
    );
  }
}
