import 'package:flutter/material.dart';

class QuranScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Expanded(
          child: Center(
            child: Image.asset('assets/images/quran.png'),
          ),
        ),
        Divider(
          thickness: 2.5,
          color: Color.fromRGBO(183, 147, 95, 1.0),
        ),
        Expanded(
          flex: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'عدد الايات',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              Text(
                'اسم السوره',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
