import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islamy_app/models/hadeth_data.dart';
import 'package:islamy_app/screens/hadeth_details.dart';
import 'package:islamy_app/widgets/hadeth_screen_widget/hadeth_header.dart';

class HadethScreen extends StatefulWidget {
  @override
  State<HadethScreen> createState() => _HadethScreenState();
}

class _HadethScreenState extends State<HadethScreen> {
  List<Map>? ahadeth;

  void loadHadeth() async {
    ahadeth = await HadethData.getAhadeth();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    if (ahadeth == null) {
      loadHadeth();
    }
    return Column(
      children: [
        Expanded(
          child: Center(
            child: Image(
              image: AssetImage('assets/images/islamic.png'),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              HadethHeader(),
              Expanded(
                child: (ahadeth == null)
                    ? CircularProgressIndicator.adaptive()
                    : ListView.builder(
                        itemCount: ahadeth!.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.of(context).pushNamed(
                                  HadethDetails.routeName,
                                  arguments: {
                                    'title': ahadeth![index]['title'],
                                    'text': ahadeth![index]['text'],
                                  });
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                ahadeth![index]['title'],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w400),
                              ),
                            ),
                          );
                        },
                      ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
