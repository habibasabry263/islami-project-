import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_islami/colors.dart';
import 'package:real_islami/my_theme_data.dart';

class radio extends StatelessWidget {
   radio({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
    myThemeData.getBackgroundImage(context),
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/elradio.png",
                width: 412,
                height: 222,
              ),
              const SizedBox(height: 50),
               Text(
                "إذاعة القرآن الكريم",
                style: GoogleFonts.elMessiri( fontSize: 25,
                  fontWeight: FontWeight.w600,
                   color:Theme.of(context).textTheme.bodyLarge?.color),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                    child: IconButton(
                      onPressed: () {

                      },
                      icon:  Icon(
                        Icons.skip_previous,
                        size: 30,
                        color: Theme.of(context).iconTheme.color,
                      ),
                    ),
                  ),
                  const SizedBox(width: 35),
                  SizedBox(
                    height: 50,
                    child: IconButton(
                      onPressed: () {

                      },
                      icon:Align(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.play_arrow_rounded,
                          size: 65,
                          color:Theme.of(context).iconTheme.color,

                        ),
                      ),

                    ),
                  ),
                  const SizedBox(width: 50),
                  SizedBox(
                    height: 20,
                    child: IconButton(
                      onPressed: () {

                      },
                      icon:  Icon(
                        Icons.skip_next,
                        size: 30,
                        color: Theme.of(context).iconTheme.color,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
