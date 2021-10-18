import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'main_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',

      // Configuration.

      smartManagement: SmartManagement.full,
      //smartManagement: SmartManagement.keepFactory,
      //smartManagement: SmartManagement.onlyBuilder,

      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(IncrementController());
    //final controller = IncrementController();

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //AnotherWidget(),
            const Text(
              'You have pushed the button this many times:',
            ),

            MixinBuilder<IncrementController>(
              init: IncrementController(),
              builder: (value) {
                return Text(
                  '${value.counterOne.value} And ${value.counterTwo}',
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),

            // Obx(() => Text(
            //       "${controller.counter.value}",
            //       style: Theme.of(context).textTheme.headline4,
            //     )),

            // GetX<IncrementController>(
            //   init: IncrementController(),
            //   builder: (value) {
            //     return Text(
            //       '${value.counter.value}',
            //       style: Theme.of(context).textTheme.headline4,
            //     );
            //   },
            // )

            // GetBuilder<IncrementController>(
            //   //id: 'updatefirst',
            //   init: IncrementController(),
            //   builder: (value) {
            //     return Text(
            //       '${value.counter}',
            //       style: Theme.of(context).textTheme.headline4,
            //     );
            //   },
            // ),
            // GetBuilder<IncrementController>(
            //   //id: 'updatesecond',
            //   builder: (value) {
            //     return Text(
            //       '${value.counter}',
            //       style: Theme.of(context).textTheme.headline4,
            //     );
            //   },
            // )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.incrementBoth();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

// class AnotherWidget extends StatelessWidget {
//   const AnotherWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final IncrementController controller = Get.find();
//     //final controller = IncrementController();

//     return Container(
//       alignment: Alignment.bottomCenter,
//       height: 50,
//       width: double.infinity,
//       child: Obx(() => Text(
//             '${controller.counter.value}',
//             style: Theme.of(context).textTheme.headline4,
//           )),
//     );
//   }
// }
