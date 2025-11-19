import 'package:flutter/material.dart';

List<Widget> buildGradientDecoration(BoxConstraints constraints) {
  return [
    ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: constraints.maxHeight,
        maxWidth: constraints.maxWidth,
      ),
      child: Container(),
    ),
    Positioned.fill(
      top: null,
      child: Transform.scale(
        scale: 2,
        child: Image.asset(
          'assets/images/img-gradient-bg.png',
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    ),
  ];
}
