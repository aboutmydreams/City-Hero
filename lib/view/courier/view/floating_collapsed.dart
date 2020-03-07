import 'package:flutter/material.dart';

Widget floatingCollapsed() {
  return Container(
    decoration: BoxDecoration(
      color: Colors.deepOrange[200],
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
