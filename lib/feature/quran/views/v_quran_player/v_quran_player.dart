import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myumrah/feature/quran/views/v_quran_player/v_quran_player_mobile.dart';

class VQuranPlayer extends GetResponsiveView {
  VQuranPlayer({super.key});

  @override
  Widget? phone() => const VQuranPlayerMobile();
}