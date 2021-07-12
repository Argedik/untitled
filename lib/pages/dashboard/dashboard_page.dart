import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/pages/alerts_page.dart';
import 'package:untitled/pages/home_page.dart';
import 'package:untitled/pages/news_page.dart';

import 'dashboard_controller.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashBoardController>(
      builder: (controller) {
        return Scaffold(
          bottomNavigationBar: ConvexAppBar(
            backgroundColor: Colors.blue.shade400,
            //alttaki 2 yani homepage butonu üstüne 12 mesaj var yazısı
            //bottomNavigationBar: ConvexAppBar.badge({2: "12"},
            initialActiveIndex: controller.tabIndex,
            items: [
              TabItem(icon: Icons.bookmark, title: "Ana Sayfa"),
              TabItem(icon: Icons.addchart, title: "Haberler"),
              TabItem(icon: Icons.home, title: "AlertsPage"),
            ],
            onTap: controller.changeTabIndex,
          ),
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                HomePage(),
                NewsPage(),
                AlertsPage(),
              ],
            ),
          ),
        );
      },
    );
  }
}

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashBoardController>(() => DashBoardController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<NewsController>(() => NewsController());
    Get.lazyPut<AlertsController>(() => AlertsController());
  }
}
