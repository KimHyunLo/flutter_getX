import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${Get.arguments}"),
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).pop();
                Get.back();
              },
              child: Text('뒤로 이동'),
            ),
          ],
        ),
      ),
    );
  }
}
