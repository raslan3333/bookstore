import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BSTextField extends StatelessWidget {
  String hint;
  bool hasLabel = false;
  String label;
  double width;
  double height;
  double y;
  IconData icon;
  var _controller = TextEditingController();

  BSTextField(
      {this.width, this.height, this.y, this.icon, this.hint, this.label});

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: this.label == null? 0: 22,
          child: Text(this.label ?? "", style: TextStyle(fontSize: 17),),
        ),
        Container(
          height: height,
          width: width,
          child: TextFormField(
            textCapitalization: TextCapitalization.words,
            cursorWidth: 1.5,
            controller: _controller,
            cursorRadius: Radius.circular(10),
            textAlignVertical: TextAlignVertical(y: y ?? 0),
            style: TextStyle(
              fontSize: 16,
            ),
            enableSuggestions: true,
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: TextStyle(color: Colors.grey),
              suffixIcon: IconButton(
                onPressed: () {
                  _controller.clear();
                },
                icon: Icon(CupertinoIcons.clear_circled),
                iconSize: 18,
              ),
              prefixIcon: Icon(icon),
              filled: true,
              isDense: true,
              contentPadding: EdgeInsets.only(top: 8, bottom: 8),
              fillColor: Colors.grey[100],
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
