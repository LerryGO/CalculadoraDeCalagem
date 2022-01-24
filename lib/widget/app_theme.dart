import 'package:flutter/material.dart';

final ThemeData appThemeData = ThemeData(
    primarySwatch: Colors.lightGreen,
    brightness: Brightness.light,
    textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(Colors.white))),
    appBarTheme: const AppBarTheme(
        color: Colors.lightGreen,
        centerTitle: true,
        titleTextStyle:
            TextStyle(color: Colors.white, fontSize: 24, fontFamily: 'Lobster'),
        iconTheme: IconThemeData(color: Colors.white)));
