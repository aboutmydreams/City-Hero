import 'package:CityHero/component/app_ui.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  MyAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      child: AppBar(
        leading: null,
        backgroundColor: Colors.amber,
        title: SafeArea(
          child: Container(
            margin: EdgeInsets.only(top: 10),
            color: Colors.amber,
            height: 90,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Hero(
                    tag: "appbar1",
                    child: Container(
                      child: Text("治愈/感染\n 23/43", style: AppStyles.textStyleB),
                    ),
                  ),
                ),
                Expanded(
                  child: Hero(
                    tag: "appbar2",
                    child: Container(
                      child: Text("居民满意度\n -2.3", style: AppStyles.textStyleB),
                    ),
                  ),
                ),
                Expanded(
                  child: Hero(
                    tag: "appbar3",
                    child: Container(
                      child: Text("影响力\n 21k", style: AppStyles.textStyleB),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * 0.09),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => getSize();
  Size getSize() {
    return new Size(100.0, 75.0);
  }
}
