import 'package:flutter/material.dart';
import 'package:flutter_getx/src/controller/dependency.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class GetLazyPutPage extends StatelessWidget {
  const GetLazyPutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.find<DependencyController>().increase();
          },
          child: Text("initialize"),
        ),
      ),
    );
  }
}
