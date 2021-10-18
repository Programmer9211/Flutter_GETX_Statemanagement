import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  String name = "Aditya";
}

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final Controller controller = Controller();

  @override
  Widget build(BuildContext context) {
    return OtherClass(
      controller: controller,
    );
  }
}

class OtherClass extends StatelessWidget {
  final Controller controller;
  OtherClass({required this.controller, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(controller.name),
    );
  }
}
