import 'package:get/get.dart';

class IncrementController extends GetxController {
  int counter = 0;

  void incrementCounter() {
    counter++;

    update();
  }

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  // @override
  // void onReady() {
  //   // TODO: implement onReady
  //   super.onReady();
  // }

  // @override
  // void onClose() {
  //   // TODO: implement onClose
  //   super.onClose();
  // }
}
