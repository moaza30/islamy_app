import 'package:flutter/material.dart';
import 'package:islamy_app/models/quran_data.dart';

class QuranList extends StatelessWidget {
  final String? ayatNumber, ayatName;

  QuranList({this.ayatNumber, this.ayatName});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.5,
          alignment: Alignment.center,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(
                width: 3,
                color: Color.fromRGBO(183, 147, 95, 1),
              ),
            ),
          ),
          child: Text(
            ayatNumber!,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.5,
          alignment: Alignment.center,
          padding: EdgeInsets.all(5),
          child: Text(
            ayatName!,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
