import 'package:flutter/material.dart';
import 'package:flutter_taxi_booking_driver_app/common/my_colors.dart';

get kAppThemeData => ThemeData(
      pageTransitionsTheme: PageTransitionsTheme(
        builders: {
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        },
      ),
      brightness: Brightness.light,
      primaryColor: kPrimaryColor,
      backgroundColor: Colors.white,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
        color: kPrimaryColor,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      accentColor: kAccentColor,
      iconTheme: IconThemeData(color: kBlack),
      fontFamily: "GT-Eesti",
      textTheme: TextTheme(
        headline5: TextStyle(
          color: kBlack,
        ),
        headline6: TextStyle(
          fontStyle: FontStyle.normal,
          color: kBlack,
        ),
        bodyText2: TextStyle(
          color: kBlack,
        ),
        subtitle2: TextStyle(
          color: kBlack,
        ),
      ),
    );
