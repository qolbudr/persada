import 'package:flutter/material.dart';

extension ExtensionListWidget on List<Widget> {
  List<Widget> joinWidget(Widget widget) {
    List<Widget> result = [];
    for (var element in this) {
      result.addAll([element, widget]);
    }

    if (result.isNotEmpty) result.removeAt(result.length - 1);
    return result;
  }
}