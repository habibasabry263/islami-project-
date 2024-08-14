import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_islami/colors.dart';
import 'package:real_islami/my_theme_data.dart';

class sebha extends StatefulWidget {
  const sebha({super.key});

  @override
  State<sebha> createState() => _sebhaState();


}


class _sebhaState extends State<sebha> {
  int counter=0;
  List <String> tasbeeha=[
    "سبحان الله",
    "الحمدلله",
    "لا اله الا الله",
    "الله اكبر",
  ];
  int index=0;
  double angle=0;
  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset(
              isDarkMode
                  ? "assets/images/head sebha darkk.png"
                  : "assets/images/head of seb7a.png",
            ),
            Padding(
              padding: const EdgeInsets.only(top:35.0),
              child: Transform.rotate(
                angle: angle,
                child: GestureDetector(
                  onTap: () {
                    onTap();

                  },

                    child: Image.asset(
                      isDarkMode
                          ? "assets/images/body of sebha dark.png"
                          : "assets/images/body sebha light.png",
                    ),),
              ),
            ),


        ],
        ),
        Padding(
          padding: const EdgeInsets.only(top:27.0),
          child: Text("عدد التسبيحات", textAlign: TextAlign.center,
              style: GoogleFonts.elMessiri(
                fontSize:25,
                fontWeight: FontWeight.w600,
                 color: Theme.of(context).textTheme.bodyLarge?.color,
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(top:26.0),
          child: Center(child:
          Container(
            padding: EdgeInsets.all(16),
            child:
            Text("$counter",  style: GoogleFonts.inter(
            fontSize:25,
            fontWeight: FontWeight.w400,
              color: Theme.of(context).appBarTheme.titleTextStyle?.color,

          )),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(23),
            color: Theme.of(context).cardColor,
          ),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(top:26.0),
          child: Center(child:
          Container(
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
            child:
            Text("${tasbeeha[index]}",  style: GoogleFonts.inter(
              fontSize:25,
              fontWeight: FontWeight.w400,
              color: Theme.of(context).textTheme.bodyMedium?.color,

            )),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Theme.of(context).colorScheme.primary,
            ),
          )),
        ),
      ],
    );
  }
  onTap(){
    counter++;
    if(counter%33==0){
      index++;
      counter++;
      counter=0;
    }
    if(index==tasbeeha.length){

      index=0;
    }
    angle+=360/4;
    setState(() {


    });
  }
}
