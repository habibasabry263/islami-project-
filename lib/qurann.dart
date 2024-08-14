import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:real_islami/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_islami/modelsura.dart';
import 'package:real_islami/sura_details.dart';
import 'package:real_islami/my_theme_data.dart';

class qurann extends StatelessWidget {
  qurann({super.key});

  final List<String> suraNames = [
    "البقرة","البقرة","البقرة","البقرة","البقرة","البقرة","البقرة","البقرة",

  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/header.png"),
          Divider(),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Column(

                    children: [
                      Text(
                        "عدد الآيات",
                        style: GoogleFonts.elMessiri(
                          color: Theme.of(context).textTheme.bodyLarge?.color,
                          fontWeight: FontWeight.w600,
                          fontSize: 25,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Divider(),
                      Expanded(
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 30, bottom: 17, right: 60, top: 12),
                              child: Text(
                                "286",
                                style: GoogleFonts.inter(
                                  color: Theme.of(context).textTheme.bodyLarge?.color,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 25,
                                ),
                                textAlign: TextAlign.end,
                              ),
                            );
                          },
                          itemCount: suraNames.length,
                        ),
                      ),
                    ],
                  ),
                ),
                VerticalDivider(
                  color: AppColor.primaryColor,
                  thickness: 3,
                  width: 0,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "إسم السورة ",
                        style: GoogleFonts.elMessiri(
                          color: Theme.of(context).textTheme.bodyLarge?.color,
                          fontWeight: FontWeight.w600,
                          fontSize: 25,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Divider(),
                      Expanded(
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 70),
                              child: InkWell(
                                onTap: () {
                                Navigator.pushNamed(context, sura_details.routeName,
                                arguments: modelsura(suraNames[index], index),
                                );

                                },
                                child: Text(
                                  suraNames[index],
                                  style: GoogleFonts.inter(
                                    color: Theme.of(context).textTheme.bodyLarge?.color,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 25,
                                  ),
                                  textAlign: TextAlign.end,
                                ),
                              ),
                            );
                          },
                          itemCount: suraNames.length,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

    );

  }

}
