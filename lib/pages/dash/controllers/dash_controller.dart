import 'package:get/get.dart';

class DashController extends GetxController {
  final RxInt _index = 0.obs;

  set index(int newIntex) {
    _index.value = newIntex;

    // update();
  }

  int get index => _index.value;
}
