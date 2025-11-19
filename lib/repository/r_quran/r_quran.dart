import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:flutter/services.dart';
import 'package:myumrah/repository/r_quran/models/reciter_model/reciter_model.dart';
import 'package:myumrah/repository/r_quran/models/surah_model/surah_model.dart';

abstract class RQuran {
  Future<List<ReciterModel>> reciters();
  Future<List<SurahModel>> surahs();
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
  
  @override
  Future<List<SurahModel>> surahs() async {
    try {
      final dio = Dio();
      dio.interceptors.add(DioCacheInterceptor(options: CacheOptions(store: MemCacheStore())));
      final response = await dio.get('https://api.alquran.cloud/v1/surah');
      final json = response.data as Map<String, dynamic>;
      final surahs = (json['data'] as List).map((e) => SurahModel.fromJson(e)).toList();
      return surahs;
    } catch (e) {
      rethrow;
    }
  }
}