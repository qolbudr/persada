import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myumrah/core/theme/theme_color.dart';
import 'package:myumrah/core/utils/extensions.dart';
import 'package:myumrah/core/widgets/w_appbar.dart';
import 'package:myumrah/core/widgets/w_refresher.dart';
import 'package:myumrah/core/widgets/w_wrapper.dart';
import 'package:myumrah/feature/quran/controllers/c_quran_main/c_quran_main.dart';
import 'package:myumrah/feature/quran/quran_routes.dart';
import 'package:myumrah/feature/quran/widgets/w_reciter_tile.dart';

class VQuranMainMobile extends StatelessWidget {
  const VQuranMainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final o = Get.put(CQuranMain());
    return Obx(
      () => Scaffold(
        body: WWrapper(
          appBar: WAppbar(title: "Alquran Player"),
          body: WRefresher(
            controller: o.refreshController,
            onRefresh: o.onGetData,
            child: ListView(
              children: [
                ...o.state.reciters.map(
                  (item) => WReciterTile(
                    data: item,
                    onTap: () => QuranRoutes.toSurah(),
                  ),
                ),
              ].joinWidget(Divider(height: 1, color: ThemeColor.dividerMain)),
            ),
          ),
        ),
      ),
    );
  }
}
