import 'package:flutter/material.dart';

class FloatIcon extends StatelessWidget {
  const FloatIcon({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: 320,
          right: 0,
          child: IconButton(
            icon: Icon(Icons.scanner),
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, "/", (route) => route == null);
            },
          ),
        )
      ],
    );
  }
}
