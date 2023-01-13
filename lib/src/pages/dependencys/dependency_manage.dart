import 'package:flutter/material.dart';
import 'package:flutter_getx/src/controller/dependency.dart';
import 'package:flutter_getx/src/pages/dependencys/get_lazy_put.dart';
import 'package:flutter_getx/src/pages/dependencys/get_put.dart';
import 'package:get/get.dart';

class DependencyManagePage extends StatelessWidget {
  const DependencyManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("의존성 주입"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(
                  GetPutPage(),
                  binding: BindingsBuilder(
                    () {
                      Get.put(DependencyController());
                    },
                  ),
                );
              },
              child: Text("Get.put"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(
                  GetLazyPutPage(),
                  binding: BindingsBuilder(
                    () {
                      Get.lazyPut<DependencyController>(
                        () => DependencyController(),
                      );
                    },
                  ),
                );
              },
              child: Text("Get.lazyPut"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(
                  GetPutPage(),
                  binding: BindingsBuilder(
                    () {
                      Get.putAsync<DependencyController>(
                        () async {
                          await Future.delayed(const Duration(seconds: 3));
                          return DependencyController();
                        },
                      );
                    },
                  ),
                );
              },
              child: Text("Get.putAsync"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(
                  GetPutPage(),
                  binding: BindingsBuilder(
                    () {
                      Get.create<DependencyController>(
                        () => DependencyController(),
                      );
                    },
                  ),
                );
              },
              child: Text("Get.create"),
            ),
          ],
        ),
      ),
    );
  }
}
