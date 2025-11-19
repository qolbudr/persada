// ignore_for_file: unused_element
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myumrah/core/models/status.dart';
import 'package:myumrah/repository/r_quran/models/surah_model/surah_model.dart';

part 'c_quran_surah_state.freezed.dart';

@freezed
abstract class CQuranSurahState with _$CQuranSurahState {
  const CQuranSurahState._();
  const factory CQuranSurahState({
    @Default([]) List<SurahModel> surahs,
    @Default(Status.initial()) Status status,
  }) = _CQuranSurahState;
}