import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AlertsPage extends GetView<AlertsController> {
  @override
  Widget build(BuildContext context) {
    print("AlertsPage");
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            "Alerts Page",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}

class AlertsController extends GetxController {}
