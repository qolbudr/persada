import 'package:flutter/material.dart';
import 'package:myumrah/core/theme/theme_color.dart';
import 'package:myumrah/core/theme/theme_radius.dart';
import 'package:myumrah/core/theme/theme_text.dart';
import 'package:myumrah/core/widgets/w_appbar.dart';
import 'package:myumrah/core/widgets/w_wrapper.dart';
import 'package:myumrah/feature/quran/widgets/w_gradient_decoration.dart';

class VQuranPlayerMobile extends StatelessWidget {
  const VQuranPlayerMobile({super.key});

  @override
  Widget build(BuildContext context) {
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
                    ConstrainedBox(
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
                                'assets/images/img-figure-1.png',
                                width: double.infinity,
                                fit: BoxFit.cover,
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
                                        "Alfatihah",
                                        style: ThemeText.headH4Medium(),
                                      ),
                                      Text(
                                        "Abdurahman As-Sudais",
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
                            LinearProgressIndicator(),
                            const Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                        color: Colors.black.withOpacity(0.18),
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
