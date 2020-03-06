import 'package:CityHero/component/app_ui.dart';
import 'package:CityHero/view/courier/courier_page.dart';
import 'package:CityHero/view/view/appbar.dart';
import 'package:CityHero/view/view/float_buttom.dart';
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
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              InkWell(
                onTap: () {
                  // changPage(1);
                  Navigator.pushNamedAndRemoveUntil(
                      context, "/courier", (route) => route == null);
                  // Navigator.of(context).pushNamed("/doctor");
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
      ),
    );
  }
}
