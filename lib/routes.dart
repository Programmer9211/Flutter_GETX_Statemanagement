import 'package:get/get.dart';
import 'package:getx_statemanagement/first_screen.dart';
import 'package:getx_statemanagement/main.dart';
import 'package:getx_statemanagement/second_screen.dart';
import 'package:getx_statemanagement/third_screen.dart';

class Routes {
  static final routes = [
    GetPage(name: '/home', page: () => const MyHomePage(title: 'Home Screen')),
    GetPage(name: '/first', page: () => FirstScreen()),
    GetPage(name: '/second', page: () => SecondScreen()),
    GetPage(name: '/third', page: () => ThirdScreen()),
  ];
}
