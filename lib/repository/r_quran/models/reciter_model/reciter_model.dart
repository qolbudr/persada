import 'package:freezed_annotation/freezed_annotation.dart';

part 'reciter_model.freezed.dart';
part 'reciter_model.g.dart';

@freezed
abstract class ReciterModel with _$ReciterModel {
  const ReciterModel._();
  const factory ReciterModel({
    String? id,
    String? name,
    String? image,
  }) = _ReciterModel;

  factory ReciterModel.fromJson(Map<String, dynamic> json) => _$ReciterModelFromJson(json);
}