import 'package:flutter/material.dart';
import 'package:myumrah/core/widgets/w_appbar.dart';
import 'package:myumrah/core/widgets/w_wrapper.dart';
import 'package:myumrah/feature/quran/widgets/w_reciter_tile.dart';

class VQuranMainMobile extends StatelessWidget {
  const VQuranMainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WWrapper(
        appBar: const WAppbar(
          title: "Alquran Player",
        ),
        body: ListView(
          children: [
            WReciterTile(),
          ],
        ),
      )
    );
  }
}