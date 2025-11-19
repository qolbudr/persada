import 'package:get/get.dart';
import 'package:myumrah/feature/quran/quran_routes.dart';

class BaseRoute {
  static List<GetPage> route = [
    ...QuranRoutes.routes
  ];
}