import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Book extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: bookItems(),
      ),
    );
  }

  List<Widget> bookItems() {
    List<Widget> items = [];
    int i = 0;
    while (i < 10) {
      items.add(
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.black12, spreadRadius: -4, blurRadius: 8),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          margin: EdgeInsets.all(5),
          height: 233,
          width: 120,
          child: Column(children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5), topRight: Radius.circular(5)),
              child: Image.asset(
                'assets/book.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 5, top: 1),
                child: SelectableText(
                  'Der nahende Sturm',
                  style: TextStyle(color: Color(0xFFF3B3F42)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 4.0, bottom: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '14.00 €',
                    style:
                        TextStyle(color: Colors.deepOrangeAccent, fontSize: 12),
                  ),
                ],
              ),
            ),
          ]),
        ),
      );
      i++;
    }

    return items;
  }
}
