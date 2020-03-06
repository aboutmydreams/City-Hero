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
      body: Stack(
        children: <Widget>[
          Positioned(
            child: Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Image.asset(
                  'assets/images/first.jpg',
                  fit: BoxFit.cover,
                ),
                color: Colors.green,
              ),
            ),
          )
        ],
      ),
    );
  }
}
