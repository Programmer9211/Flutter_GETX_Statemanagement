import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  int someNumber = 12;
}

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final Controller controller = Get.put(Controller());
  // final Controller controller1 = Get.put(Controller(), tag: "Tag1");
  // final Controller controller2 = Get.put(Controller(), tag: "Tag2");

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class OtherScreen extends StatelessWidget {
  OtherScreen({Key? key}) : super(key: key);

  final Controller controller = Get.find();
  // final Controller controller1 = Get.find(tag: "Tag1");
  // final Controller controller2 = Get.find(tag: "Tag2");

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(controller.someNumber.toString()),
    );
  }
}
