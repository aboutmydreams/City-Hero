import 'package:CityHero/view/courier/courier_page.dart';
import 'package:CityHero/view/doctor/doctor_page.dart';
import 'package:CityHero/view/home_page.dart';
import 'package:CityHero/view/init/first_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> routeData = {
  '/': (context) => HomePage(),
  '/first': (context) => FirstPage(),
  '/courier': (context) => CourierPage(),
  '/doctor': (context) => DoctorPage(),
};
