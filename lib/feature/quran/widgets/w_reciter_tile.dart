import 'package:flutter/material.dart';
import 'package:myumrah/core/theme/theme_radius.dart';
import 'package:myumrah/core/theme/theme_text.dart';

class WReciterTile extends StatelessWidget {
  const WReciterTile({super.key});

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
              child: Image.asset("assets/images/img-figure-1.png", width: 60, height: 60, fit: BoxFit.cover),
            ),
            Text("Abdurahman As-Sudais", style: ThemeText.bodyLRegular()),
          ],
        ),
      ),
    );
  }
}
