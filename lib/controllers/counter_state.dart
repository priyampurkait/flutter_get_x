import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class CounterState extends GetxController {
  // int count = 0;
  final count = 0.obs;

  void incriment() => count(count.value = count.value + 1);
  @override
  void onInit() {
    debugPrint('###### Counter State on Init ######');
    super.onInit();
  }

  // void incriment() {
  //   count = count + 1;
  //   update();
  // }
}
