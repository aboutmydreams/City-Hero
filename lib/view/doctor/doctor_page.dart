import 'package:CityHero/component/app_ui.dart';
import 'package:CityHero/view/view/appbar.dart';
import 'package:CityHero/view/view/float_buttom.dart';
import 'package:flutter/material.dart';

class DoctorPage extends StatefulWidget {
  DoctorPage({Key key}) : super(key: key);

  @override
  _DoctorPageState createState() => _DoctorPageState();
}

class _DoctorPageState extends State<DoctorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      floatingActionButton: FloatIcon(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Image.asset(
          'assets/images/first.jpg',
          fit: BoxFit.cover,
        ),
        color: Colors.green,
      ),
    );
  }
}
