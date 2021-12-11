import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/dependency_injection/through_constructor.dart';

class Controller extends GetxController {
  int someData = 0;
}

class AnotherController extends GetxController {
  int anotherData = 1;
}

class HomeScreenBindigs implements Bindings {
  @override
  void dependencies() {
    // Get.put

    Get.put(Controller());
    Get.put(AnotherController());

    // Get.put With Tag

    Get.put(Controller(), tag: "tag");
    Get.put(AnotherController(), tag: "tag");

    // Get.put with permanent property.

    Get.put(Controller(), permanent: true);
    Get.put(AnotherController(), permanent: true);

    // Get.lazyPut

    Get.lazyPut(() => Controller());
    Get.lazyPut(() => const AnotherClass());

    // Get.lazyPut With Tag

    Get.lazyPut(() => Controller(), tag: "tag");
    Get.lazyPut(() => const AnotherClass(), tag: "tag");

    // Get.lazyPut with fenix(permanent) property.

    Get.lazyPut(() => Controller(), fenix: true);
    Get.lazyPut(() => const AnotherClass(), fenix: true);

    // Get.create

    Get.create(() => Controller());
    Get.create(() => AnotherController());

    // Get.create With Tag

    Get.create(() => Controller(), tag: "tag");
    Get.create(() => AnotherController(), tag: "tag");

    // Get.create with permanent property.

    Get.create(() => Controller(), permanent: true);
    Get.create(() => AnotherController(), permanent: true);
  }
}

class AnotherClass extends StatelessWidget {
  const AnotherClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.to(() => HomeScreen(), binding: HomeScreenBindigs());
          },
          child: const Text("Go To Next Page"),
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final Controller controller = Get.find();
  final AnotherClass anotherClassController = Get.find();
  // final Controller controller1 = Get.find(tag: "tag");
  // final AnotherClass anotherClassController1 = Get.find(tag: "tag");

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
