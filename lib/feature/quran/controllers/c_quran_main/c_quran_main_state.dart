// ignore_for_file: unused_element
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myumrah/core/models/status.dart';
import 'package:myumrah/repository/r_quran/models/reciter_model/reciter_model.dart';

part 'c_quran_main_state.freezed.dart';

@freezed
abstract class CQuranMainState with _$CQuranMainState {
  const CQuranMainState._();
  const factory CQuranMainState({
    @Default([]) List<ReciterModel> reciters,
    @Default(Status.initial()) Status status,
  }) = _CQuranMainState;
}