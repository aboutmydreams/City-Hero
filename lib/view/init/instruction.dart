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
                    fit: BoxFit.cover)),
            alignment: Alignment.center, // where to position the child
            child: Column(
              children: <Widget>[
                SizedBox(height: 20),
                Card(
                  color: Colors.grey[300],
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text('游戏介绍',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  color: Colors.white.withOpacity(0.9),
                  height: 500,
                  width: 380,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Text(
                            '2019年底开始的以武汉为中心的多个城市发现高传染性新型冠状病毒入侵，有很多感动人心的人物、故事，有医生、护士、有快递员，有民警等各行各业的人…… '),
                      ),
                      Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Text('每一个平凡的，遵守国家的要求居家生活的人，也同样值得尊重。'),
                      ),
                      Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Text('但我们不应仅仅只是感动。'),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Text(
                          '如果再来一次灾难，怎么才能做得比现在更好，怎样成为更好的自己?',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.green[600],
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Text(
                          '这个游戏带你回到武汉封城的那天，你可以体会不同职业，以及在防疫战争中所遇到的不同场景，因为选择的不同，会带来不同的影响力，做出不同的贡献！',
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Text(
                          '目标：控制疫情！国泰平安！',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 20),
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        iconSize: 24.0,
                        onPressed: () {
                          Navigator.pop(context);
                        },
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
