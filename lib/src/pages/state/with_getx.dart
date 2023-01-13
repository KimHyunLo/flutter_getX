import 'package:flutter/material.dart';
import 'package:flutter_getx/src/controller/count_with_getx.dart';
import 'package:get/get.dart';

class WithGetX extends StatelessWidget {
  CountControllerWithGetX _controllerWithGetX = Get.put(CountControllerWithGetX());

  WithGetX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("GetX", style: TextStyle(fontSize: 30)),
          GetBuilder<CountControllerWithGetX>(
            id: "first",
            builder: (controller) {
              return Text("${controller.count}");
            },
          ),
          GetBuilder<CountControllerWithGetX>(
            id: "second",
            builder: (controller) {
              return Text("${controller.count}");
            },
          ),
          ElevatedButton(
            onPressed: () {
              Get.find<CountControllerWithGetX>().increase("first");
            },
            child: Text("+"),
          ),
          ElevatedButton(
            onPressed: () {
              Get.find<CountControllerWithGetX>().increase("second");
            },
            child: Text("+"),
          ),
        ],
      ),
    );
  }
}
