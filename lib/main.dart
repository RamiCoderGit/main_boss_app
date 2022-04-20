
import 'package:flutter/material.dart';
import 'package:signin_form/screens/Trucks/TrucksList.dart';
import 'package:signin_form/screens/auth/SignUpPage.dart';
import 'package:signin_form/screens/drivers/AddDriverPage.dart';
import 'package:signin_form/screens/drivers/DriversList.dart';
import 'package:signin_form/screens/map/MapData.dart';
import 'package:signin_form/screens/welcome/welcome_screen.dart';

import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navitrack App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: primaryColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: textColor),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            padding: EdgeInsets.all(defaultPadding),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: textFieldBorder,
          enabledBorder: textFieldBorder,
          focusedBorder: textFieldBorder,
        ),
      ),
      home: MapSample(),
    );
  }
}
