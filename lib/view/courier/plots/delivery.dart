import 'package:CityHero/state_manage/top.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class DeliveryPage extends StatefulWidget {
  DeliveryPage({Key key}) : super(key: key);

  @override
  _DeliveryPageState createState() => _DeliveryPageState();
}

class _DeliveryPageState extends State<DeliveryPage> {
  var courierTask = topModel.courierGameData.taskList[0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            child: Container(
              height: MediaQuery.of(context).size.height - 200,
              width: MediaQuery.of(context).size.width,
              child: CachedNetworkImage(
                imageUrl: courierTask.plotList[0].background,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 200,
              child: Text("sda"),
            ),
          )
        ],
      ),
    );
  }
}
