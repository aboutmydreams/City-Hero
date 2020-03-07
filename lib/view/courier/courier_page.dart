import 'package:CityHero/view/view/appbar.dart';
import 'package:CityHero/view/view/float_buttom.dart';
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
        panel: _floatingPanel(),
        collapsed: _floatingCollapsed(),
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

Widget _floatingCollapsed() {
  return Container(
    decoration: BoxDecoration(
      color: Colors.blueGrey,
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.0), topRight: Radius.circular(24.0)),
    ),
    margin: const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0),
    child: Center(
      child: Text(
        "有新的可接任务（上滑显示）",
        style: TextStyle(color: Colors.white),
      ),
    ),
  );
}

Widget _floatingPanel() {
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
    child: Center(
      child: Text("This is the SlidingUpPanel when open"),
    ),
  );
}
