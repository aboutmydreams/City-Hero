import 'package:CityHero/component/app_ui.dart';
import 'package:CityHero/view/courier/courier_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _page;
  bool hideBottom = false;
  List<Widget> pageList = List();
  // GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _page = 0;
  }

  changPage(int pageIndex) {
    setState(() {
      _page = pageIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Stack(
        children: <Widget>[
          // Positioned(
          //   top: 320,
          //   left: 20,
          //   child: IconButton(
          //     icon: Icon(Icons.keyboard),
          //     onPressed: () {
          //       changPage(0);
          //     },
          //   ),
          // ),
          Positioned(
            top: 320,
            right: 0,
            child: IconButton(
              icon: Icon(Icons.scanner),
              onPressed: () {
                changPage(0);
              },
            ),
          )
        ],
      ),
      appBar: PreferredSize(
        child: AppBar(
          backgroundColor: Colors.amber,
          title: SafeArea(
            child: Container(
              margin: EdgeInsets.only(top: 10),
              color: Colors.amber,
              height: 90,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      child: Text("治愈/感染\n 200", style: AppStyles.textStyleB),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Text("居民满意度\n -2.3", style: AppStyles.textStyleB),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Text("影响力\n 21k", style: AppStyles.textStyleB),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.09),
      ),
      body: _page == 0
          ? SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.all(16),
                child: Column(
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        changPage(1);
                      },
                      child: Container(
                        margin: EdgeInsets.all(20),
                        height: 200,
                        width: 300,
                        color: Colors.amber,
                        child: Text("快递小哥"),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 300,
                      color: Colors.amber,
                      child: Text("data"),
                    ),
                  ],
                ),
              ),
            )
          : _page == 1 ? CourierPage() : Container(),
    );
  }
}
