import 'package:get/get.dart';
import 'package:myumrah/feature/quran/controllers/c_quran_player/c_quran_player.dart';
import 'package:myumrah/repository/r_quran/r_quran.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RIQuran(), fenix: true);
    Get.put(CQuranPlayer(), permanent: true);
  }
}