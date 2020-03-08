import 'package:CityHero/component/app_ui.dart';
import 'package:CityHero/state_manage/data/game_data.dart';
import 'package:CityHero/state_manage/top.dart';
import 'package:CityHero/view/courier/view/floating_collapsed.dart';
import 'package:CityHero/view/view/appbar.dart';
import 'package:CityHero/view/view/float_buttom.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class CourierPage extends StatefulWidget {
  CourierPage({Key key}) : super(key: key);

  @override
  _CourierPageState createState() => _CourierPageState();
}

class _CourierPageState extends State<CourierPage> {
  PanelController _pc = PanelController();
  bool isTaskOpen = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  // 按第二个按钮，显示任务栏
  onPressed2() {
    if (isTaskOpen) {
      _pc.open();
    } else {
      _pc.close();
    }
    setState(() {
      isTaskOpen = !isTaskOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      floatingActionButton: FloatIcon(
        onPressed2: onPressed2,
      ),
      body: SlidingUpPanel(
        controller: _pc,
        maxHeight: MediaQuery.of(context).size.height * 0.8,
        renderPanelSheet: false,
        panel: _floatingPanel(context),
        collapsed: floatingCollapsed(),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Image.asset(
            'assets/images/courier/home.png',
            fit: BoxFit.cover,
          ),
          color: Colors.green,
        ),
      ),
    );
  }
}

Widget _floatingPanel(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(24.0)),
        boxShadow: [
          BoxShadow(
            blurRadius: 20.0,
            color: Colors.grey,
          ),
        ]),
    margin: const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 140),
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: topModel.courierGameData.taskList.map((task) {
        return oneTask(context, task);
      }).toList(),
    ),
  );
}

Widget oneTask(BuildContext context, TaskList task) {
  return Container(
    width: 260,
    margin: EdgeInsets.all(20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "${task.plotName}",
          style: AppStyles.textStyleA,
        ),
        CachedNetworkImage(
          imageUrl:
              "https://cdn.nlark.com/yuque/0/2020/png/164272/1583605073541-3c07d189-619b-4979-8373-ca730909ad3b.png",
        ),
        Text(
          "${task.summary}",
          style: AppStyles.textStyleB,
        ),
        Container(
          height: 60,
          width: MediaQuery.of(context).size.width * 0.7,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.yellow.withOpacity(0.8),
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          child: FlatButton(
            onPressed: () {
              // Navigator.pushNamedAndRemoveUntil(
              //   context,
              //   "/",
              //   (route) => route == null,
              // );
            },
            child: Text(
              "前往",
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
  );
}
