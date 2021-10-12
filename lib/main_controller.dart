import 'package:get/get.dart';

class IncrementController extends GetxController {
  var counterOne = 0.obs;
  int counterTwo = 0;

  void incrementCounterOne() {
    counterOne.value++;
  }

  void incrementCounterTwo() {
    counterTwo++;
    update();
  }

  void incrementBoth() {
    incrementCounterOne();
    incrementCounterTwo();
  }

  // int counter = 0;

  // void incrementCounter() {
  //   counter++;

  //   update();
  // }

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
