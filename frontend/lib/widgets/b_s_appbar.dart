import 'package:frontend/widgets/b_s_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BSAppbar extends StatelessWidget {
  const BSAppbar(BuildContext context, {
    Key key,
  }) : super(key: key);

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 60,
      shadowColor: Color.fromARGB(50, 60, 60, 60),
      elevation: 5,
      automaticallyImplyLeading: false,
      actions: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(
                  CupertinoIcons.arrow_left,
                  color: Colors.blueGrey[800],
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
              ),
              BSTextField(

                width: 250,
                height: 40,
                icon: CupertinoIcons.search,
              ),
              IconButton(
                icon: Icon(
                  CupertinoIcons.bars,
                  color: Colors.blueGrey[800],
                  size: 28,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
