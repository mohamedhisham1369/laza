import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final ThemeData lightTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    elevation: 0,
    scrolledUnderElevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle.dark,
    backgroundColor: Color(0xffFAF8F1),
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
    actionsIconTheme: IconThemeData(
      color: Colors.black,
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.white,
  ),
  scaffoldBackgroundColor: const Color(0xffFAF8F1),
  primaryColor: Colors.black,
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.yellow)
      .copyWith(background: Colors.white),
);

final ThemeData darkTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    systemOverlayStyle: SystemUiOverlayStyle.light,
    elevation: 0,
    scrolledUnderElevation: 0,
    color: Colors.black,
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
    actionsIconTheme: IconThemeData(
      color: Colors.white,
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: const Color(0xff10151C),
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.grey[600],
  ),
  scaffoldBackgroundColor: const Color(0xff10151C),
  primaryColor: const Color(0xff10151C),
  colorScheme:
      ColorScheme.fromSwatch().copyWith(background: const Color(0xff10151C)),
);
