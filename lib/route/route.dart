import 'package:CityHero/view/courier/courier_page.dart';
import 'package:CityHero/view/doctor/doctor_page.dart';
import 'package:CityHero/view/home_page.dart';
import 'package:CityHero/view/init/first_page.dart';
import 'package:CityHero/view/init/instruction.dart';
import 'package:CityHero/view/init/starting_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> routeData = {
  '/': (context) => HomePage(),
  '/first': (context) => FirstPage(),
  '/start': (context) => StartingPage(),
  '/intro': (context) => GameIntro(),
  '/courier': (context) => CourierPage(),
  '/doctor': (context) => DoctorPage(),
};
