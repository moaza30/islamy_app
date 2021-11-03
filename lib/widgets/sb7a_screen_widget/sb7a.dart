import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sb7a extends StatefulWidget {
  @override
  State<Sb7a> createState() => _Sb7aState();
}

class _Sb7aState extends State<Sb7a> {
  int counter = 0, index = 0;
  double angle = 1;
  List<String> tasbi7 = ['سبحان الله', 'استغفر الله', 'الله اكبر'];
  void Sb7aCounter() {
    counter++;
    angle += 1;

    if (counter % 33 == 0) {
      index++;
      if (index == tasbi7.length - 1) {
        index = 0;
      }
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.only(top: 50),
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Transform.rotate(
                    angle: angle, child: Image.asset('assets/images/Sb7a.png')),
                Container(
                  margin: EdgeInsets.only(top: 30, bottom: 15),
                  child: Text(
                    'عدد التسبيحات',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color.fromRGBO(183, 147, 95, 0.6),
                  ),
                  margin: EdgeInsets.only(bottom: 20),
                  alignment: Alignment.center,
                  height: 81,
                  width: 69,
                  child: Text(
                    '$counter',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(183, 147, 95, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    padding: EdgeInsets.only(right: 15, left: 15),
                  ),
                  onPressed: () {
                    Sb7aCounter();
                  },
                  child: Text(
                    tasbi7[index],
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
