import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/third_screen.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({Key? key}) : super(key: key);

  var data = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Data from First Screen: $data"),
            ElevatedButton(
              onPressed: () {
                Get.to(() => ThirdScreen());
              },
              child: const Text("Third Screen"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/third');
              },
              child: const Text("Third Screen(Named Route)"),
            ),
            ElevatedButton(
              onPressed: () {
                //Get.to(() => FirstScreen(), arguments: "Some Data");
                Get.to(() => ThirdScreen(),
                    arguments: ['some String data', 12, true]);
              },
              child: const Text("Third Screen(With Data)"),
            ),
            ElevatedButton(
              onPressed: () {
                // Remove Previous Route.
                Get.off(() => ThirdScreen());
              },
              child: const Text("Third Screen(Removing previous route)"),
            ),
            ElevatedButton(
              onPressed: () {
                // Remove All Route.
                Get.offAll(() => ThirdScreen());
              },
              child: const Text("Third Screen(Removing All route)"),
            ),
          ],
        ),
      ),
    );
  }
}
