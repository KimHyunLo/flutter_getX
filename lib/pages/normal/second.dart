import 'package:flutter/material.dart';
import 'package:flutter_getx/main.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).pop();
                Get.back();
              },
              child: Text('뒤로 이동'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).pushAndRemoveUntil(
                //   MaterialPageRoute(builder: (_) => MyPage()),
                //   (route) => false,
                // );
                Get.offAll(MyPage());
              },
              child: Text('홈으로 이동'),
            ),
          ],
        ),
      ),
    );
  }
}
