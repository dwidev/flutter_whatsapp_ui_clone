import 'package:flutter/material.dart';

import 'constant/colors.dart';
import 'page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.red,
      title: 'WhatsApp Clone by dwifhmi',
      theme: ThemeData(
        primarySwatch: MaterialColor(
          secondaryDark.value,
          {
            50: Color(secondaryDark.value), //10%
            100: Color(secondaryDark.value), //20%
            200: Color(secondaryDark.value), //30%
            300: Color(secondaryDark.value), //40%
            400: Color(secondaryDark.value), //50%
            500: Color(secondaryDark.value), //60%
            600: Color(secondaryDark.value), //70%
            700: Color(secondaryDark.value), //80%
            800: Color(secondaryDark.value), //90%
            900: Color(secondaryDark.value), //100%
          },
        ),
        iconTheme: const IconThemeData(color: textColor),
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 25,
            color: textColor,
            fontWeight: FontWeight.w500,
          ),
          headline2: TextStyle(
            fontSize: 14,
            color: textColor,
            fontWeight: FontWeight.w500,
          ),
          bodyText1: TextStyle(
            fontSize: 14,
            color: textColor,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}
