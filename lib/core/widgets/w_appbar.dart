import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myumrah/core/theme/theme_color.dart';
import 'package:myumrah/core/theme/theme_text.dart';

class WAppbar extends StatelessWidget {
  const WAppbar({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        spacing: 22,
        children: [
          InkWell(
            onTap: () => Get.back(),
            child: Container(
              width: 38,
              height: 38,
              decoration: BoxDecoration(color: ThemeColor.backgroundSecondary, shape: BoxShape.circle),
              child: Icon(Icons.chevron_left, size: 18, color: ThemeColor.textPrimary),
            ),
          ),
          Expanded(child: Text(title, style: ThemeText.bodyLMedium())),
        ],
      ),
    );
  }
}
