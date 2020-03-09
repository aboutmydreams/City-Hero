import 'package:CityHero/component/app_ui.dart';
import 'package:CityHero/models/small_widget/user_avatar.dart';
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
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Opacity(
              opacity: 0.2,
              child: Image.asset(
                "assets/images/home_page.png",
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            child: SingleChildScrollView(
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(25, 0, 0, 0),
                        offset: Offset(1, 2),
                        blurRadius: 4,
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(9.5)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      onePlayer(
                        context,
                        routeName: "/courier",
                        title: "快递小哥",
                        color: Colors.deepOrange[400].withOpacity(0.65),
                        imageUrl: "assets/images/courier/courier.jpg",
                        summary: "这个城市总是需要有人去做那些看起来小事情，将整个城市连接起来。比如我。",
                      ),
                      onePlayer(
                        context,
                        routeName: "/courier",
                        title: "医务人员",
                        color: Colors.deepOrange[400].withOpacity(0.65),
                        imageUrl: "assets/images/doctor/doctor.png",
                        summary: "这是艰难无硝烟的战场，你和病魔零距离，我亦追随人道主义的身影",
                      ),
                      onePlayer(
                        context,
                        routeName: "/courier",
                        title: "记者",
                        color: Colors.deepOrange[400].withOpacity(0.65),
                        imageUrl: "assets/images/doctor/doctor.png",
                        summary: "所经历的劳累、疲惫、委屈、欣慰，酸甜苦辣全都浸透寻找真相的道路上",
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget onePlayer(BuildContext context,
    {String routeName,
    String imageUrl,
    String title,
    String summary,
    Color color}) {
  return InkWell(
    onTap: () {
      Navigator.pushNamedAndRemoveUntil(
        context,
        routeName,
        (route) => route == null,
      );
    },
    child: Container(
      margin: EdgeInsets.only(top: 20, bottom: 10),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(25, 0, 0, 0),
            offset: Offset(1, 2),
            blurRadius: 4,
          ),
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(9.5),
        ),
      ),
      height: 140,
      width: MediaQuery.of(context).size.width * 0.94,
      child: Row(
        children: <Widget>[
          userAvatar(imageUrl, height: 80),
          Container(
            padding: EdgeInsets.all(14),
            width: MediaQuery.of(context).size.width * 0.64,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: AppStyles.textStyleA,
                  maxLines: 3,
                ),
                Text(
                  summary,
                  style: AppStyles.textStyleBB,
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
