import 'package:flutter/material.dart';
import 'package:sport_field/screens/home_screen/home_screen.dart';
import 'package:sport_field/themes/colors.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: SportColors.backgroundBlackColor,
          elevation: 0,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
