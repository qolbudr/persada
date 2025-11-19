import 'package:flutter/material.dart';
import 'package:myumrah/core/theme/theme_color.dart';
import 'package:myumrah/core/theme/theme_text.dart';
import 'package:myumrah/repository/r_quran/models/surah_model/surah_model.dart';

class WSurahTile extends StatelessWidget {
  const WSurahTile({super.key, this.item});
  final SurahModel? item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: Row(
          spacing: 15,
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/img-frame-ayat.png',
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  width: 50,
                  height: 50,
                  child: Center(
                    child: Text(
                      "${item?.number}",
                      style: ThemeText.bodyNormalRegular(),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Text(
                "${item?.englishName}",
                style: ThemeText.bodyNormalRegular(),
              ),
            ),
            Icon(Icons.chevron_right, size: 20, color: ThemeColor.textPrimary),
          ],
        ),
      ),
    );
  }
}
