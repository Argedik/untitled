import 'package:get/get.dart';

class DashBoardController extends GetxController {
  var tabIndex = Get.arguments;
  int index;
  void changeTabIndex(index) {
    tabIndex = index;
    update();
  }
}
