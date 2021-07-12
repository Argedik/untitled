import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewsPage extends GetView<NewsController> {
  @override
  Widget build(BuildContext context) {
    print("NewsPage");
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            "News Page",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}

class NewsController extends GetxController {}
