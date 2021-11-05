import 'package:flutter/material.dart';

class HadethHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
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
        'الاحاديث',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
      ),
    );
  }
}
