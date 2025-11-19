import 'package:freezed_annotation/freezed_annotation.dart';

part 'surah_model.freezed.dart';
part 'surah_model.g.dart';

@freezed
abstract class SurahModel with _$SurahModel {
  const SurahModel._();
  const factory SurahModel({
    num? number,
    String? name,
    String? englishName,
    String? englishNameTranslation,
    String? numberOfAyahs,
    String? revelationType,
  }) = _SurahModel;

  factory SurahModel.fromJson(Map<String, dynamic> json) => _$SurahModelFromJson(json);
}