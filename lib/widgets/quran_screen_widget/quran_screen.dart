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
        Expanded(
          flex: 3,
          child:Text('sdasa'),
          ),
        ),
      ],
    ));
  }
}
