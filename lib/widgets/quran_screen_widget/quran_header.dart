import 'package:flutter/material.dart';

class QuranHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(
                  width: 3,
                  color: Color.fromRGBO(183, 147, 95, 1),
                ),
                top: BorderSide(
                  width: 3,
                  color: Color.fromRGBO(183, 147, 95, 1),
                ),
                bottom: BorderSide(
                  width: 3,
                  color: Color.fromRGBO(183, 147, 95, 1),
                ),
              ),
            ),
            child: Text(
              'عدد الايات',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(5),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  width: 3,
                  color: Color.fromRGBO(183, 147, 95, 1),
                ),
                bottom: BorderSide(
                  width: 3,
                  color: Color.fromRGBO(183, 147, 95, 1),
                ),
              ),
            ),
            child: Text(
              'اسم السوره',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
            ),
          ),
        ),
      ],
    );
  }
}
