import 'package:get/get.dart';

enum NUM { FIRST, SECOND }

class User {
  String name;
  User({required this.name});
}

class CountControllerWithReactiveGetX extends GetxController {
  RxInt count = 0.obs;
  RxDouble double = 0.0.obs;
  RxString string = "".obs;
  Rx<NUM> nums = NUM.FIRST.obs;
  Rx<User> user = User(name: "name").obs;
  RxList list = [].obs;

  @override
  void onInit() {
    super.onInit();
    ever(count, (_) => print("매번 호출"));
    once(count, (_) => print("한 번만 호출"));
    debounce(
      count,
      (callback) => print("마지막에만 호출"),
      time: const Duration(seconds: 1),
    );
    interval(
      count,
      (callback) => print("변경되고 있는동안마다 호출"),
      time: const Duration(seconds: 1),
    );
  }

  void increase() {
    count(2);
    double(1.2);
    string("number");
    nums(NUM.SECOND);
    user(User(name: "Billie"));
    user.update((val) {
      val?.name = "Smith";
    });
    list.add(1);
    list.addAll([1, 2, 3]);
    list.addIf(user.value.name == "", false);
  }

  void putNumber(int value) {
    count(value);
  }
}
