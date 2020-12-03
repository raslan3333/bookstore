import 'package:frontend/widgets/book.dart';
import 'package:flutter/material.dart';

class BSHomebody extends StatelessWidget {
  const BSHomebody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, int index) {
          return ListTile(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 3, left: 8),
              child: Row(
                children: [
                  Text(
                    'science fiction',
                    style: TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                  Icon(
                    Icons.keyboard_arrow_right_rounded,
                    color: Colors.blue,
                  )
                ],
              ),
            ),
            subtitle: Book(),
            contentPadding: EdgeInsets.zero,
          );
        },
        separatorBuilder: (context, int index) {
          return Divider(
            height: 4,
            color: Colors.transparent,
          );
        },
      ),
    );
  }
}
