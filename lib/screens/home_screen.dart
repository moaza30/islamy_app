import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/widgets/hadeth_screen_widget/hadeth_screen.dart';
import 'package:islamy_app/widgets/quran_screen_widget/quran_screen.dart';
import 'package:islamy_app/widgets/radio_screen.dart';
import 'package:islamy_app/widgets/sb7a_screen_widget/sb7a.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late int currentScreenIndex;
  List screens = [
    RadioScreen(),
    Sb7a(),
    HadethScreen(),
    QuranScreen(),
  ];
  @override
  void initState() {
    super.initState();
    currentScreenIndex = 3;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/Group 18.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
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
        body: screens[currentScreenIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromRGBO(183, 147, 95, 1.0),
          currentIndex: currentScreenIndex,
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: false,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          onTap: (int index) {
            currentScreenIndex = index;
            setState(() {});
          },
          selectedLabelStyle: TextStyle(
            fontSize: 15,
          ),
          iconSize: 36,
          items: [
            BottomNavigationBarItem(
              label: "الراديو",
              icon: ImageIcon(
                AssetImage('assets/icons/ic_radio.png'),
              ),
            ),
            BottomNavigationBarItem(
              label: 'التسبيح',
              icon: ImageIcon(
                AssetImage('assets/icons/sebha.png'),
              ),
            ),
            BottomNavigationBarItem(
              label: 'الاحاديث',
              icon: ImageIcon(
                AssetImage('assets/icons/quran-quran-svgrepo-com.png'),
              ),
            ),
            BottomNavigationBarItem(
              label: 'القران',
              icon: ImageIcon(
                AssetImage('assets/icons/quran.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
