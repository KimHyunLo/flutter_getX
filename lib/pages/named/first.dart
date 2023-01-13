import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstNamedPage extends StatelessWidget {
  const FirstNamedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Named Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigator.of(context).popAndPushNamed('/second');
            Get.offNamed('/second');
          },
          child: Text('다음페이지 이동'),
        ),
      ),
    );
  }
}
