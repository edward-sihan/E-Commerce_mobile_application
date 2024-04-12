import 'package:get/get.dart';

class HomeContoller extends GetxController {
  static HomeContoller get instace => Get.find();

  final carousalCurrentIndex = 0.obs;

  void updatePageIndicator(index) {
    carousalCurrentIndex.value = index;
  }
}
