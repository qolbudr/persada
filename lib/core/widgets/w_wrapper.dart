import 'package:flutter/material.dart';

class WWrapper extends StatelessWidget {
  const WWrapper({super.key, this.appBar, this.body});
  final Widget? appBar;
  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          if(appBar != null) appBar!,
          if(body != null) Expanded(child: body!),
        ],
      ),
    );
  }
}