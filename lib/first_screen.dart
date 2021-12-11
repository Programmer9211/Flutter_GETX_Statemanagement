import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/second_screen.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({Key? key}) : super(key: key);

  var data = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Data from Home Screen: $data"),
            ElevatedButton(
              onPressed: () {
                Get.to(() => SecondScreen());
              },
              child: const Text("Second Screen"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/second');
              },
              child: const Text("Second Screen(Named Route)"),
            ),
            ElevatedButton(
              onPressed: () {
                //Get.to(() => FirstScreen(), arguments: "Some Data");
                Get.to(() => SecondScreen(),
                    arguments: ['some String data', 12, true]);
              },
              child: const Text("Second Screen(With Data)"),
            ),
            ElevatedButton(
              onPressed: () {
                // Remove Previous Route.
                Get.off(() => SecondScreen());
              },
              child: const Text("Second Screen(Removing previous route)"),
            ),
            ElevatedButton(
              onPressed: () {
                // Remove All Route.
                Get.offAll(() => SecondScreen());
              },
              child: const Text("Second Screen(Removing All route)"),
            ),
          ],
        ),
      ),
    );
  }
}
