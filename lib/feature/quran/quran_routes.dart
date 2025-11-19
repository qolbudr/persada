import 'package:get/get.dart';
import 'package:myumrah/feature/quran/views/v_quran_main/v_quran_main.dart';
import 'package:myumrah/feature/quran/views/v_quran_surah/v_quran_surah.dart';

class QuranRoutes {
  static const prefix = '/quran';
  static const main = '$prefix/main';
  static const surah = '$prefix/surah';

  static List<GetPage> routes = [
    GetPage(name: main, page: () => VQuranMain()),
    GetPage(name: surah, page: () => VQuranSurah()),
  ];

  static Future<void>? toSurah() => Get.toNamed(surah);
}
