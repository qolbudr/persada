// ignore_for_file: unused_element
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:just_audio/just_audio.dart';
import 'package:myumrah/core/models/status.dart';
import 'package:myumrah/repository/r_quran/models/reciter_model/reciter_model.dart';
import 'package:myumrah/repository/r_quran/models/surah_model/surah_model.dart';

part 'c_quran_player_state.freezed.dart';

@freezed
abstract class CQuranPlayerState with _$CQuranPlayerState {
  const CQuranPlayerState._();
  const factory CQuranPlayerState({
    ReciterModel? currentReciter,
    SurahModel? currentSurah,
    @Default([]) List<AudioSource> playlist,
    @Default(Status.initial()) Status status,
  }) = _CQuranPlayerState;
}