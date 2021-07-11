import 'package:get/get.dart';

class DashBoardController extends GetxController {
  var tabIndex = Get.arguments;

  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }
}
