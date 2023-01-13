import 'package:flutter/material.dart';
import 'package:flutter_getx/src/controller/count_with_reactive_getx.dart';
import 'package:get/get.dart';

class ReactiveStateManagePage extends StatelessWidget {
  const ReactiveStateManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerWithReactiveGetX());

    return Scaffold(
      appBar: AppBar(
        title: Text('반응형상태관리'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text("${Get.find<CountControllerWithReactiveGetX>().count.value}"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.find<CountControllerWithReactiveGetX>().increase();
              },
              child: Text("+"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.find<CountControllerWithReactiveGetX>().putNumber(5);
              },
              child: Text("5로 변경"),
            ),
          ],
        ),
      ),
    );
  }
}
