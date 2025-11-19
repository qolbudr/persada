import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myumrah/core/theme/theme_color.dart';
import 'package:myumrah/core/utils/extensions.dart';
import 'package:myumrah/core/widgets/w_appbar.dart';
import 'package:myumrah/core/widgets/w_refresher.dart';
import 'package:myumrah/core/widgets/w_wrapper.dart';
import 'package:myumrah/feature/quran/controllers/c_quran_surah/c_quran_surah.dart';
import 'package:myumrah/feature/quran/widgets/w_surah_tile.dart';

class VQuranSurahMobile extends StatelessWidget {
  const VQuranSurahMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final o = Get.put(CQuranSurah());
    return Obx(
      () => Scaffold(
        body: WWrapper(
          appBar: WAppbar(title: o.arguments?.name ?? "Unknown Reciter"),
          body: WRefresher(
            controller: o.refreshController,
            onRefresh: o.onGetData,
            child: ListView(
              children: [
                ...o.state.surahs.map((item) => WSurahTile(item: item, onTap: () => o.onGotoPlayer(item))),
              ].joinWidget(Divider(height: 1, color: ThemeColor.dividerMain)),
            ),
          ),
        ),
      ),
    );
  }
}
