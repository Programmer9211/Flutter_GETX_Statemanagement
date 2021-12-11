import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  String name = "Aditya";
}

class HomePageBindings implements Bindings {
  @override
  void dependencies() {
    Get.create(() => Controller());
  }
}

class HomePage extends GetWidget<Controller> {
  // Define Controller type
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(controller.name);
  }
}
