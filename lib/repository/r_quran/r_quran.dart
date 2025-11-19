import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:myumrah/repository/r_quran/models/reciter_model/reciter_model.dart';

abstract class RQuran {
  Future<List<ReciterModel>> reciters();
}

class RIQuran implements RQuran {
  @override
  Future<List<ReciterModel>> reciters() async {
    try {
      final response = await rootBundle.loadString('assets/json/reciters.json');
      final json = jsonDecode(response);
      final reciters = (json as List).map((e) => ReciterModel.fromJson(e)).toList();
      return reciters;
    } catch (e) {
      rethrow;
    }
  }
}