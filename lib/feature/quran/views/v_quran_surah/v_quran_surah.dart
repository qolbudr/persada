import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myumrah/feature/quran/views/v_quran_surah/v_quran_surah_mobile.dart';

class VQuranSurah extends GetResponsiveView {
  VQuranSurah({super.key});

  @override
  Widget? phone() => const VQuranSurahMobile();
}