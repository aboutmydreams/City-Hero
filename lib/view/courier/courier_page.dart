import 'package:CityHero/view/view/appbar.dart';
import 'package:CityHero/view/view/float_buttom.dart';
import 'package:flutter/material.dart';

class CourierPage extends StatefulWidget {
  CourierPage({Key key}) : super(key: key);

  @override
  _CourierPageState createState() => _CourierPageState();
}

class _CourierPageState extends State<CourierPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      floatingActionButton: FloatIcon(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Image.asset(
          'assets/images/courier/home.png',
          fit: BoxFit.cover,
        ),
        color: Colors.green,
      ),
    );
  }
}
