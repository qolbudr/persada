import 'package:get/get.dart';
import 'package:myumrah/repository/r_quran/r_quran.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RIQuran(), fenix: true);
  }
}