import 'package:arabic_numbers/arabic_numbers.dart';
import 'package:flutter/services.dart';

class HadethData {
  static Future<List<Map>> getAhadeth() async {
    List<String> ahadeth;
    List<Map> ahadethMap = [];
    ahadeth = (await rootBundle.loadString('assets/hadeth/ahadeth.txt'))
        .trim()
        .split('#');
    for (int i = 0; i < ahadeth.length; i++) {
      if (ahadeth[i].length > 0) {
        String text = (ahadeth[i].split('\n')..removeAt(0)).join(' ');
        ahadethMap.add({
          'title': 'الحديث رقم ${ArabicNumbers().convert(i + 1)}',
          'text': text,
        });
      }
    }
    return ahadethMap;
  }
}
