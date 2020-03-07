import 'dart:async';

import 'package:CityHero/component/app_ui.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  void initState() {
    super.initState();

    // 定时器
    // Timer initTime = new Timer(const Duration(milliseconds: 3), () {
    //   // ifLogin().then((res) {
    //   //   if (res) {
    //   //     // 初始化数据
    //   //     topModel.update();
    //   //   }
    //   // });
    // });

    // 定时器
    Timer timer = new Timer(
      const Duration(milliseconds: 3000),
      () {
        try {
          Navigator.pushNamedAndRemoveUntil(
              context, "/start", (route) => route == null);
          // ifLogin().then((haveUserLogin) {
          //   print("======haveUserLogin");
          //   print(haveUserLogin);
          //   print("haveUserLogin=====");
          //   if (haveUserLogin) {
          //     Navigator.pushNamedAndRemoveUntil(
          //         context, "/", (route) => route == null);
          //   } else {
          //     Navigator.pushNamedAndRemoveUntil(
          //         context, "/guide", (route) => route == null);
          //   }
          // });
        } catch (e) {}
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: MediaQuery.of(context).size.width * 0.3,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width * 0.7,
              child: Image.asset(
                'assets/images/first.jpg',
                fit: BoxFit.cover,
              ),
              color: Colors.green,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width * 0.3,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 40,
                    height: 40,
                    child: Image.asset(
                      'assets/images/logo.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 16),
                  Container(
                    child: Center(
                      child: Text(
                        "·  城市英雄",
                        style: AppStyles.textStyleBB,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
