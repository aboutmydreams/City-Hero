import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _page = 0;
  bool hideBottom = false;
  List<Widget> pageList = List();
  // GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  void initState() {
    // pageList
    //   ..add(ExplorePage())
    //   ..add(Dashboard())
    //   ..add(ScopedModel<NewsManage>(
    //     model: topModel.newsManage,
    //     child: NewsPage(),
    //   ))
    //   ..add(MyPage());

    // _top = 0;
    // _left = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: QuickSetPage(),

      // body: pageList[_page],
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              child: Text("data"),
            ),
          )
        ],
      ),
    );
  }
}
