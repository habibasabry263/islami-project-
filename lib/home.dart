import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_islami/ahadeth.dart';
import 'package:real_islami/my_theme_data.dart';
import 'package:real_islami/radio.dart';
import 'package:real_islami/qurann.dart';
import 'package:real_islami/sebha.dart';



class home extends StatefulWidget {
  static const String routeName= 'Home';

  home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int selecteditem=0;
  @override
  Widget build(BuildContext context) {
   // bool isDarkTheme = Theme.of(context).brightness == Brightness.dark;

    return  Stack(
        children:[
          Image.asset(
           myThemeData.getBackgroundImage(context),
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,),
          Scaffold(
            backgroundColor: Colors.transparent,

            appBar: AppBar(
              elevation: 0,
              title: Text("إسلامي",

              ),
              backgroundColor: Colors.transparent,
             // centerTitle: true,


            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: selecteditem,
              onTap: (index) {
                selecteditem = index;
                setState(() {

                });
              },


              items: [
                BottomNavigationBarItem(icon: ImageIcon(AssetImage(
                    "assets/images/radio.png")), label: "الراديو"),
                BottomNavigationBarItem(icon:  ImageIcon(AssetImage(
                    "assets/images/sebha.png")), label: " التسبيح"),
                BottomNavigationBarItem(icon:  ImageIcon(AssetImage(
                    "assets/images/mosahaf.png")), label: "الاحاديث "),
                BottomNavigationBarItem(icon:  ImageIcon(AssetImage(
                    "assets/images/quran.png")), label: "القران "),
              ],


            ),
            body: tabss[selecteditem],

          ),
        ]
    );
  }
  List<Widget> tabss=[
    radio(),
    sebha(),
    ahadeth(),
    qurann(),
  ];

}
