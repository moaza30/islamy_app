import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/models/hadeth_data.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = 'HadethScreen';
  @override
  Widget build(BuildContext context) {
    Map hadeth = ModalRoute.of(context)!.settings.arguments as Map;
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.red,
        image: DecorationImage(
          image: AssetImage('assets/images/Group 18.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          //change default back button
          iconTheme: IconThemeData(color: Colors.black),
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.light,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            'اسلامى',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.black,
            ),
          ),
        ),
        body: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 25),
          margin: EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 20,
          ).add(EdgeInsets.only(bottom: 30)),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white.withOpacity(0.5),
                Colors.white,
              ],
            ),
          ),
          child: Column(
            children: [
              Text(
                hadeth['title'],
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Divider(
                thickness: 1,
                color: Color.fromRGBO(183, 147, 95, 1.0),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Text(
                    hadeth['text'],
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      height: 2,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
