import 'package:flutter/material.dart';
import 'package:islamy_app/models/quran_data.dart';
import 'package:islamy_app/widgets/quran_screen_widget/quran_header.dart';
import 'package:islamy_app/widgets/quran_screen_widget/quran_list_details.dart';

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
            child: Column(
              children: [
                QuranHeader(),
                Expanded(
                  child: ListView.builder(
                    itemCount: QuranData.quranNames.length,
                    itemBuilder: (context, index) {
                      return QuranList(
                        ayatNumber: QuranData.ayatNumbers[index],
                        ayatName: QuranData.quranNames[index],
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
