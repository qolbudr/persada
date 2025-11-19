// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SurahModel _$SurahModelFromJson(Map<String, dynamic> json) => _SurahModel(
  number: json['number'] as num?,
  name: json['name'] as String?,
  englishName: json['englishName'] as String?,
  englishNameTranslation: json['englishNameTranslation'] as String?,
  numberOfAyahs: json['numberOfAyahs'] as String?,
  revelationType: json['revelationType'] as String?,
);

Map<String, dynamic> _$SurahModelToJson(_SurahModel instance) =>
    <String, dynamic>{
      'number': instance.number,
      'name': instance.name,
      'englishName': instance.englishName,
      'englishNameTranslation': instance.englishNameTranslation,
      'numberOfAyahs': instance.numberOfAyahs,
      'revelationType': instance.revelationType,
    };
