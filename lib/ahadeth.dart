import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:real_islami/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_islami/modelhadeth.dart';
import 'package:real_islami/hadeth_details.dart';
import 'package:real_islami/my_theme_data.dart';

class ahadeth extends StatelessWidget {
  ahadeth({super.key});

  final List<String> hadethName = List<String>.generate(10, (index) => 'الحديث رقم ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/besmellah.png"),
          Divider(),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        " الأحاديث",
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
                                  Navigator.pushNamed(context, hadeth_details.routeName,
                                    arguments: modelhadeth(hadethName[index], index),
                                  );

                                },
                                child: Text(
                                  hadethName[index],
                                  style: GoogleFonts.inter(
                                    color: Theme.of(context).textTheme.bodyLarge?.color,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 25,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            );
                          },
                          itemCount: hadethName.length,
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
