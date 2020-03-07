import 'package:CityHero/component/app_ui.dart';
import 'package:CityHero/models/cool_text.dart';
import 'package:flutter/material.dart';

class GameIntro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/startingPage.png'),
                fit: BoxFit.cover,
              ),
            ),
            alignment: Alignment.center, // where to position the child
            child: Column(
              children: <Widget>[
                SizedBox(height: 40),
                Card(
                  color: Colors.grey[300],
                  child: Container(
                    width: 380,
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'City Hero 介绍',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 15, 20, 30),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.85),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(25, 0, 0, 0),
                        offset: Offset(1, 2),
                        blurRadius: 4,
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(9.5)),
                  ),
                  width: 380,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Text(''),
                      ),
                      Padding(
                        padding: EdgeInsets.all(3.0),
                        child: TypeText(
                          text:
                              '2019年底开始的以武汉为中心的多个城市发现高传染性新型冠状病毒入侵，有很多感动人心的人物、故事，有医生、护士、有快递员，有民警等各行各业的人…… \n\n每一个平凡的，遵守国家的要求居家生活的人，也同样值得尊重。\n\n但我们不应仅仅只是感动,如果再来一次灾难，怎么才能做得比现在更好，怎样成为更好的自己?\n\n这个游戏带你回到武汉封城的那天，你可以体会不同职业，以及在防疫战争中所遇到的不同场景，因为选择的不同，会带来不同的影响力，做出不同的贡献！',
                          style: AppStyles.textStyleB,
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.yellow.withOpacity(0.8),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        child: FlatButton(
                          onPressed: () {
                            Navigator.pushNamedAndRemoveUntil(
                              context,
                              "/",
                              (route) => route == null,
                            );
                          },
                          child: Text(
                            "开始游戏",
                            style: TextStyle(
                              color: AppColors.accentText,
                              fontFamily: "sans_bold",
                              fontWeight: FontWeight.w700,
                              fontSize: 17,
                              letterSpacing: 2,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
