import 'package:frontend/widgets/b_s_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double elementsWidth = MediaQuery.of(context).size.width * 0.8;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 40,
                ),
                CircleAvatar(
                  radius: elementsWidth/5,
                  backgroundColor: Color(0xfffFCCF1E),
                ),
                SizedBox(
                  height: 50,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    BSTextField(
                      label: "Name",
                      hint: 'name',
                      width: elementsWidth,
                      icon: CupertinoIcons.person,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    BSTextField(
                      label:'Last Name',
                      hint: 'last name',
                      width: elementsWidth,
                      icon: CupertinoIcons.lock,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    BSTextField(
                      label:'Email',
                      hint: 'example@host.com',
                      width: elementsWidth,
                      icon: CupertinoIcons.lock,
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    BSTextField(
                      label:'Password',
                      hint: '●●●●●●●●',
                      width: elementsWidth,
                      icon: CupertinoIcons.lock,
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    BSTextField(
                      label:'Confirm Password',
                      hint: '●●●●●●●●',
                      width: elementsWidth,
                      icon: CupertinoIcons.lock,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                RaisedButton(
                  elevation: 0,
                  padding: const EdgeInsets.all(0.0),
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  highlightElevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  child: Container(
                    height: 47,
                    width: elementsWidth,
                    child: Center(
                        child: Text(
                          'Log In',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFF424F5F)),
                        )),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/hp');
                  },
                ),
                Divider(
                  height: 20,
                ),
                TextButton(
                  child: Text('Login'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}
