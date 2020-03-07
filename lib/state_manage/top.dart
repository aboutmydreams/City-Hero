import 'dart:convert';

import 'package:CityHero/state_manage/data/game_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:yuyan_app/models/tools/get_pref.dart';

class TopStateModel extends Model {
  GameJson _courierGameJson = GameJson();
  GameJson get courierGameData => _courierGameJson;

  void loadData() async {
    rootBundle.loadString('assets/data/courier.json').then((value) {
      var data = json.decode(value);
      GameJson courierJson = GameJson.fromJson(data);
      _courierGameJson = courierJson;
      print(courierJson.taskList[0].plotName);
      notifyListeners();
    });
  }

  void update() {}
}

TopStateModel topModel = TopStateModel();
