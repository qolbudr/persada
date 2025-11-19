import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
import 'package:myumrah/core/theme/theme_color.dart';
import 'package:myumrah/core/theme/theme_radius.dart';
import 'package:myumrah/core/theme/theme_text.dart';
import 'package:myumrah/core/utils/extensions.dart';
import 'package:myumrah/core/widgets/w_appbar.dart';
import 'package:myumrah/core/widgets/w_refresher.dart';
import 'package:myumrah/core/widgets/w_wrapper.dart';
import 'package:myumrah/feature/quran/controllers/c_quran_main/c_quran_main.dart';
import 'package:myumrah/feature/quran/controllers/c_quran_player/c_quran_player.dart';
import 'package:myumrah/feature/quran/quran_routes.dart';
import 'package:myumrah/feature/quran/widgets/w_reciter_tile.dart';
import 'package:myumrah/repository/r_quran/models/surah_model/surah_model.dart';

class VQuranMainMobile extends StatelessWidget {
  const VQuranMainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final o = Get.put(CQuranMain());
    final oPlayer = Get.put(CQuranPlayer());

    return Scaffold(
      body: WWrapper(
        appBar: WAppbar(title: "Alquran Player"),
        body: WRefresher(
          controller: o.refreshController,
          onRefresh: o.onGetData,
          child: StreamBuilder(
            stream: oPlayer.audioPlayer.playerStateStream,
            builder: (context, snapshot) {
              return Obx(
                () => ListView(
                  children: [
                    if (snapshot.data?.processingState == ProcessingState.ready) ...[
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Sedang Diputar", style: ThemeText.bodyNormalMedium()),
                            const SizedBox(height: 10),
                            Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(ThemeRadius.roundedM), color: ThemeColor.backgroundSecondary),
                              child: StreamBuilder(
                                stream: oPlayer.audioPlayer.sequenceStream,
                                builder: (context, currentSnapshot) {
                                  final currentPlaying = currentSnapshot.data?.elementAt(oPlayer.audioPlayer.currentIndex ?? 0).tag as SurahModel?;
                                  return Row(
                                    spacing: 10,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(ThemeRadius.roundedSM),
                                        child: Image.asset(
                                          currentPlaying?.reciter?.image ?? 'assets/images/img-figure-1.png',
                                          width: 50,
                                          height: 50,
                                          fit: BoxFit.cover,
                                          errorBuilder: (context, error, stackTrace) => SizedBox(),
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("${currentPlaying?.englishName}", style: ThemeText.bodyNormalMedium()),
                                            Text("${currentPlaying?.reciter?.name}", style: ThemeText.bodySMRegular()),
                                          ],
                                        ),
                                      ),
                                      if (snapshot.data?.playing ?? false) ...[
                                        InkWell(
                                          onTap: () => oPlayer.audioPlayer.pause(),
                                          child: Container(
                                            width: 40,
                                            height: 40,
                                            decoration: BoxDecoration(shape: BoxShape.circle, color: Color(0xFF404040)),
                                            child: Center(child: Icon(Icons.pause, color: Colors.white, size: 18)),
                                          ),
                                        ),
                                      ] else ...[
                                        InkWell(
                                          onTap: () => oPlayer.audioPlayer.play(),
                                          child: Container(
                                            width: 40,
                                            height: 40,
                                            decoration: BoxDecoration(shape: BoxShape.circle, color: Color(0xFF404040)),
                                            child: Center(child: Icon(Icons.play_arrow, color: Colors.white, size: 18)),
                                          ),
                                        ),
                                      ],
                                    ],
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                    ...o.state.reciters
                        .map((item) => WReciterTile(data: item, onTap: () => QuranRoutes.toSurah(item)))
                        .toList()
                        .joinWidget(Divider(height: 1, color: ThemeColor.dividerMain)),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
