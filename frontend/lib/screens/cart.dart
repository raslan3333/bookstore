import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 8,
      itemBuilder: (BuildContext context, int index) {
        return element('description', context);
      },
    );
  }

  Widget element(String description, BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      child: Container(

        height: 120,
        margin: EdgeInsets.only(top: 10, left: 15, right: 15),
        padding: EdgeInsets.only( right: 15),
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.black12, spreadRadius: -4, blurRadius: 8),],
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5) ),
              child: Image.asset(
                'assets/book.jpg',
                fit: BoxFit.cover,
                width: 100,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:0),
                    child: Text('Der nahende Sturm'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Text('Autor: Ellin Carsta'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Text('Pries: 15 €'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Text('Datum: ${DateTime.now().toString().substring(0, 10)}'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
