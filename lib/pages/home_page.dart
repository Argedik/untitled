import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/pages/dashboard/dashboard_controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    print("HomePage");
    return GetBuilder<DashBoardController>(
        init: DashBoardController(),
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                "Home Title",
                style: TextStyle(color: Colors.black),
              ),
              elevation: 0,
              backgroundColor: Colors.white,
            ),
            body: Container(
              child: Center(
                child: Text(
                  "Home Page",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          );
        });
  }
}

class HomeController extends GetxController {}
