import 'package:get/get.dart';
import 'package:myumrah/feature/quran/views/v_quran_main/v_quran_main.dart';

class QuranRoutes {
  static const prefix = '/auth';
  static const main = '$prefix/main';


  static List<GetPage> routes = [
    GetPage(name: main, page: () => VQuranMain()),
  ];
}