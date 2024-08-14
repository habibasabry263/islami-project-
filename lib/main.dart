import 'package:easy_localization/easy_localization.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_islami/hadeth_details.dart';
import 'package:real_islami/home.dart';
import 'package:flutter/material.dart';
import 'package:real_islami/my_theme_data.dart';
import 'package:real_islami/sura_details.dart';

void main() async {
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: myThemeData.lightTheme,
      darkTheme: myThemeData.darkTheme,
      initialRoute: home.routeName,
      routes: {
        home.routeName: (context)=> home(),
        sura_details.routeName: (context)=> sura_details(),
        hadeth_details.routeName: (context)=> hadeth_details(),

      },


    );

  }
}
