import 'package:CityHero/component/app_ui.dart';
import 'package:flutter/material.dart';

class StartingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/startingPage.png'),
                  fit: BoxFit.cover)),
          alignment: Alignment.center, // where to position the child
          child: Container(
            width: 280.0,
            height: 480.0,
            color: Colors.white.withOpacity(0.75),
            alignment: Alignment.center, // where to position the child
            child: Container(
              width: 260.0,
              height: 460.0,
              color: Colors.black.withOpacity(0.75),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          '城市英雄',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                          ),
                        ),
                        Text(
                          'CITY HERO',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 120),
                  RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                    textColor: Colors.black,
                    child: Text('开始游戏', style: TextStyle(fontSize: 20)),
                  ),
                  SizedBox(height: 30),
                  RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/intro');
                    },
                    textColor: Colors.black,
                    child: Text('游戏介绍', style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
