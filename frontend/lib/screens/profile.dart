import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: Icon(
                      CupertinoIcons.chevron_back,
                      size: 30,
                      color: Colors.blueGrey[800],
                    ),
                    width: 50,
                  ),
                  Text(
                    'Profil',
                    style: TextStyle(fontSize: 24),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              CircleAvatar(
                backgroundColor: Colors.blueGrey,
                radius: 60,
                child: Icon(
                  CupertinoIcons.person_alt,
                  size: 100,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              element(CupertinoIcons.person,'Persönliche Daten', context),
              element(CupertinoIcons.settings, 'Eintellungen', context),
            ],
          ),
        ),
      ),
    );
  }

  Widget element(IconData i, String description, BuildContext context) {
    return InkWell(
      onTap: () {

      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: 50,
        margin: EdgeInsets.all(7),
        padding: EdgeInsets.only(left: 20, right: 15),
        decoration: BoxDecoration(boxShadow: <BoxShadow>[
          BoxShadow(color: Colors.black12, spreadRadius: -4, blurRadius: 7),
        ], color: Colors.white, borderRadius: BorderRadius.circular(5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  i,
                  color: Colors.black,
                ),
                SizedBox(width: 8,),
                Text(description),

              ],
            ),
            Icon(
              CupertinoIcons.chevron_forward,
              color: Colors.black45,
            )
          ],
        ),
      ),
    );
  }
}
