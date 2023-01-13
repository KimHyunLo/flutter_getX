import 'package:flutter/material.dart';
import 'package:flutter_getx/src/pages/named/first.dart';
import 'package:flutter_getx/src/pages/named/second.dart';
import 'package:flutter_getx/src/pages/next.dart';
import 'package:flutter_getx/src/pages/normal/first.dart';
import 'package:flutter_getx/src/pages/reactive_state_manage.dart';
import 'package:flutter_getx/src/pages/simple_state_manage.dart';
import 'package:flutter_getx/src/pages/user.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      // routes: {
      //   "/": (context) => MyPage(),
      //   "/first": (context) => FirstNamedPage(),
      //   "/second": (context) => SecondNamedPage(),
      // },
      getPages: [
        GetPage(
          name: "/",
          page: () => MyPage(),
          transition: Transition.zoom,
        ),
        GetPage(name: "/first", page: () => FirstNamedPage()),
        GetPage(name: "/second", page: () => SecondNamedPage()),
        GetPage(name: "/next", page: () => NextPage()),
        GetPage(name: "/user/:uid", page: () => UserPage()),
      ],
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("라우트 관리 홈"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(builder: (_) => FirstPage()),
                // );
                Get.to(FirstPage());
              },
              child: Text('일반적인 라우트'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).pushNamed('/first');
                Get.toNamed('/first');
              },
              child: Text('Named 라우트'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).pushNamed('/first');
                Get.toNamed('/next', arguments: "arguments");
              },
              child: Text('Arguments 전달'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).pushNamed('/first');
                Get.toNamed('/user/1234?name=Henry&age=22');
              },
              child: Text('동적 URL'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).pushNamed('/first');
                Get.to(SimpleStateManagePage());
              },
              child: Text('단순 상태 관리'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).pushNamed('/first');
                Get.to(ReactiveStateManagePage());
              },
              child: Text('반응형 상태 관리'),
            ),
          ],
        ),
      ),
    );
  }
}
