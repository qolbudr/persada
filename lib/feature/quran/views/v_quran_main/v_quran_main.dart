import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myumrah/feature/quran/views/v_quran_main/v_quran_main_mobile.dart';

class VQuranMain extends GetResponsiveView {
  VQuranMain({super.key});

  @override
  Widget? phone() => const VQuranMainMobile();
}