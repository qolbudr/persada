import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
import 'package:myumrah/core/theme/theme_color.dart';
import 'package:myumrah/core/theme/theme_radius.dart';
import 'package:myumrah/core/theme/theme_text.dart';
import 'package:myumrah/core/widgets/w_appbar.dart';
import 'package:myumrah/core/widgets/w_wrapper.dart';
import 'package:myumrah/feature/quran/controllers/c_quran_player/c_quran_player.dart';
import 'package:myumrah/feature/quran/widgets/w_gradient_decoration.dart';
import 'package:myumrah/repository/r_quran/models/surah_model/surah_model.dart';

class VQuranPlayerMobile extends StatelessWidget {
  const VQuranPlayerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final o = Get.put(CQuranPlayer());

    return Scaffold(
      body: WWrapper(
        appBar: WAppbar(),
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              children: [
                Stack(
                  children: [
                    ...buildGradientDecoration(constraints),
                    StreamBuilder<List<IndexedAudioSource>>(
                      stream: o.audioPlayer.sequenceStream,
                      builder: (context, asyncSnapshot) {
                        final currentPlaying = asyncSnapshot.data
                            ?.elementAt(o.audioPlayer.currentIndex ?? 0)
                            .tag as SurahModel?;
                        return ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: constraints.maxWidth,
                            maxHeight: constraints.maxHeight,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(40),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                    ThemeRadius.roundedL,
                                  ),
                                  child: Image.asset(
                                    '${currentPlaying?.reciter?.image}',
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                    errorBuilder: (context, error, stackTrace) => SizedBox(),
                                  ),
                                ),
                                const SizedBox(height: 25),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "${currentPlaying?.englishName}",
                                            style: ThemeText.headH4Medium(),
                                          ),
                                          Text(
                                            "${currentPlaying?.reciter?.name}",
                                            style: ThemeText.bodyLRegular(),
                                          ),
                                        ],
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.playlist_play,
                                        color: ThemeColor.textPrimary,
                                        size: 36,
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                StreamBuilder<Duration>(
                                  stream: o.audioPlayer.positionStream,
                                  builder: (context, asyncSnapshot) {
                                    final position = asyncSnapshot.data ?? Duration.zero;
                                    return LinearProgressIndicator(
                                      value: o.audioPlayer.duration?.inMilliseconds == 0
                                          ? 0
                                          : position.inMilliseconds / (o.audioPlayer.duration?.inMilliseconds ?? 1),
                                    );
                                  }
                                ),
                                const Spacer(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.skip_previous,
                                        color: ThemeColor.textPrimary,
                                        size: 40,
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: ThemeColor.backgroundSecondary,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 20,
                                            offset: Offset(12, 17),
                                            spreadRadius: 8,
                                            color: Colors.black.withOpacity(
                                              0.18,
                                            ),
                                          ),
                                        ],
                                      ),
                                      width: 90,
                                      height: 90,
                                      child: Center(
                                        child: Icon(
                                          Icons.pause,
                                          color: ThemeColor.textPrimary,
                                          size: 50,
                                        ),
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.skip_next,
                                        color: ThemeColor.textPrimary,
                                        size: 40,
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
