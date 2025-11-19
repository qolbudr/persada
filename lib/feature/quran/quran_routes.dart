import 'package:get/get.dart';
import 'package:myumrah/feature/quran/views/v_quran_main/v_quran_main.dart';
import 'package:myumrah/feature/quran/views/v_quran_player/v_quran_player.dart';
import 'package:myumrah/feature/quran/views/v_quran_surah/v_quran_surah.dart';
import 'package:myumrah/repository/r_quran/models/reciter_model/reciter_model.dart';

class QuranRoutes {
  static const prefix = '/quran';
  static const main = '$prefix/main';
  static const surah = '$prefix/surah';
  static const player = '$prefix/player';

  static List<GetPage> routes = [
    GetPage(name: main, page: () => VQuranMain()),
    GetPage(name: surah, page: () => VQuranSurah()),
    GetPage(name: player, page: () => VQuranPlayer()),
  ];

  static Future<void>? toSurah(ReciterModel? reciter) => Get.toNamed(surah, arguments: reciter);
  static Future<void>? toPlayer() => Get.toNamed(player);
}
