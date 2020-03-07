import 'package:flutter/material.dart';

class FloatIcon extends StatelessWidget {
  const FloatIcon({Key key, this.onPressed2, this.onPressed3})
      : super(key: key);
  final Function onPressed2;
  final Function onPressed3;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: 320,
          right: -20,
          child: RaisedButton(
            padding: EdgeInsets.all(7),
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                "/",
                (route) => route == null,
              );
            },
            color: Colors.red[300],
            child: Icon(
              Icons.apps,
              size: 30,
            ),
            shape: CircleBorder(),
          ),
        ),
        Positioned(
          top: 380,
          right: -20,
          child: RaisedButton(
            padding: EdgeInsets.all(7),
            onPressed: () {
              onPressed2();
            },
            color: Colors.red[300],
            child: Icon(
              Icons.track_changes,
              size: 30,
            ),
            shape: CircleBorder(),
          ),
        ),
        Positioned(
          top: 440,
          right: -20,
          child: RaisedButton(
            padding: EdgeInsets.all(7),
            onPressed: () {
              onPressed3();
            },
            color: Colors.red[300],
            child: Icon(
              Icons.hot_tub,
              size: 30,
            ),
            shape: CircleBorder(),
          ),
        )
      ],
    );
  }
}
