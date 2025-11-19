import 'package:flutter/material.dart';
import 'package:myumrah/core/theme/theme_radius.dart';
import 'package:myumrah/core/theme/theme_text.dart';
import 'package:myumrah/repository/r_quran/models/reciter_model/reciter_model.dart';

class WReciterTile extends StatelessWidget {
  const WReciterTile({super.key, required this.data});
  final ReciterModel data;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: Row(
          spacing: 15,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(ThemeRadius.roundedM),
              child: Image.asset(data.image ?? '-', width: 60, height: 60, fit: BoxFit.cover),
            ),
            Text(data.name ?? "Unknown", style: ThemeText.bodyLRegular()),
          ],
        ),
      ),
    );
  }
}
