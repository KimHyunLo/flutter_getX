import 'package:flutter/material.dart';
import 'package:flutter_getx/src/controller/count_with_getx.dart';
import 'package:get/get.dart';

class BindingPage extends GetView<CountControllerWithGetX> {
  const BindingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CountControllerWithGetX>(
              id: "first",
              builder: (controller) {
                return Text(controller.count.toString());
              },
            ),
            ElevatedButton(
              onPressed: () {
                controller.increase('first');
              },
              child: Text('increase'),
            ),
          ],
        ),
      ),
    );
  }
}
