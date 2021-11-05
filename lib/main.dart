import 'package:flutter/material.dart';
import 'package:islamy_app/screens/home_screen.dart';
import 'package:islamy_app/screens/sora_deatils.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Islamy',
      home: MainScreen(),
      routes: {
        SoraDetails.routeName: (context) => SoraDetails(),
      },
    );
  }
}
