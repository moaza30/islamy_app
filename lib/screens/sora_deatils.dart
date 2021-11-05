import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/models/quran_data.dart';

class SoraDetails extends StatefulWidget {
  static const routeName = 'sora_details';

  @override
  State<SoraDetails> createState() => _SoraDetailsState();
}

class _SoraDetailsState extends State<SoraDetails> {
  late int index;
  String? sora;

  void loadSora(int index) async {
    sora = await QuranData.readSora(index);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    index = ModalRoute.of(context)!.settings.arguments as int;
    if (sora == null) {
      loadSora(index);
    }
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
            borderRadius: BorderRadius.circular(20),
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
                QuranData.quranNames[index],
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(
                thickness: 1,
                color: Color.fromRGBO(183, 147, 95, 1.0),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: (sora == null)
                      ? Center(
                          child: CircularProgressIndicator.adaptive(),
                        )
                      : Text(
                          sora!,
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
