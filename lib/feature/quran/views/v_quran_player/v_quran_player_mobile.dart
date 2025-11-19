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
                                      backgroundColor: Color(0xffA3A3A3),
                                      color: Colors.white,
                                      value: o.audioPlayer.duration?.inMilliseconds == 0
                                          ? 0
                                          : position.inMilliseconds / (o.audioPlayer.duration?.inMilliseconds ?? 1),
                                    );
                                  }
                                ),
                                const SizedBox(height: 8),
                                Align(alignment: Alignment.centerRight, child: Text(o.audioPlayer.duration?.toString().split('.').first.substring(2, 7) ?? "00:00", style: TextStyle(color: Colors.white))),
                                const Spacer(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    IconButton(
                                      onPressed: () => o.audioPlayer.seekToPrevious(),
                                      icon: Icon(
                                        Icons.skip_previous,
                                        color: ThemeColor.textPrimary,
                                        size: 40,
                                      ),
                                    ),
                                    StreamBuilder<PlayerState>(
                                      stream: o.audioPlayer.playerStateStream,
                                      builder: (context, asyncSnapshot) {
                                        final processingState = asyncSnapshot.data?.processingState;
                                        if(processingState == ProcessingState.loading) {
                                          return SizedBox(
                                            width: 90,
                                            height: 90,
                                            child: CircularProgressIndicator(color: Colors.white)
                                          );
                                        } else {
                                          return Container(
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
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                if(asyncSnapshot.data?.playing ?? false) ...[
                                                  Center(
                                                    child: IconButton(
                                                      onPressed: () => o.audioPlayer.pause(),
                                                      icon: Icon(
                                                        Icons.pause,
                                                        color: ThemeColor.textPrimary,
                                                        size: 50,
                                                      ),
                                                    ),
                                                  )
                                                ] else ...[
                                                  Center(
                                                    child: IconButton(
                                                      onPressed: () => o.audioPlayer.play(),
                                                      icon: Icon(
                                                        Icons.play_arrow,
                                                        color: ThemeColor.textPrimary,
                                                        size: 50,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ],
                                            ),
                                          );
                                        }
                                      }
                                    ),
                                    IconButton(
                                      onPressed: () => o.audioPlayer.seekToNext(),
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
