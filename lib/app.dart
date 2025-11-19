import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:myumrah/core/routes/bindings.dart';
import 'package:myumrah/core/routes/routes.dart';
import 'package:myumrah/core/theme/theme_color.dart';
import 'package:myumrah/feature/quran/quran_routes.dart';

class MyUmrah extends StatelessWidget {
  const MyUmrah({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "MyUmrah",
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      defaultTransition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 100),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: ThemeColor.backgroundMain,
        textTheme: TextTheme.of(context).apply(bodyColor: ThemeColor.textPrimary, displayColor: ThemeColor.textPrimary),
        sliderTheme: SliderThemeData(thumbColor: Colors.white, thumbShape: RoundSliderThumbShape(enabledThumbRadius: 6), padding: EdgeInsets.zero),
      ),
      initialRoute: QuranRoutes.main,
      getPages: BaseRoute.route,
      initialBinding: MainBinding(),
    );
  }
}
