// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'surah_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SurahModel {

 num? get number; String? get name; String? get englishName; String? get englishNameTranslation; String? get numberOfAyahs; String? get revelationType;
/// Create a copy of SurahModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SurahModelCopyWith<SurahModel> get copyWith => _$SurahModelCopyWithImpl<SurahModel>(this as SurahModel, _$identity);

  /// Serializes this SurahModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SurahModel&&(identical(other.number, number) || other.number == number)&&(identical(other.name, name) || other.name == name)&&(identical(other.englishName, englishName) || other.englishName == englishName)&&(identical(other.englishNameTranslation, englishNameTranslation) || other.englishNameTranslation == englishNameTranslation)&&(identical(other.numberOfAyahs, numberOfAyahs) || other.numberOfAyahs == numberOfAyahs)&&(identical(other.revelationType, revelationType) || other.revelationType == revelationType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,name,englishName,englishNameTranslation,numberOfAyahs,revelationType);

@override
String toString() {
  return 'SurahModel(number: $number, name: $name, englishName: $englishName, englishNameTranslation: $englishNameTranslation, numberOfAyahs: $numberOfAyahs, revelationType: $revelationType)';
}


}

/// @nodoc
abstract mixin class $SurahModelCopyWith<$Res>  {
  factory $SurahModelCopyWith(SurahModel value, $Res Function(SurahModel) _then) = _$SurahModelCopyWithImpl;
@useResult
$Res call({
 num? number, String? name, String? englishName, String? englishNameTranslation, String? numberOfAyahs, String? revelationType
});




}
/// @nodoc
class _$SurahModelCopyWithImpl<$Res>
    implements $SurahModelCopyWith<$Res> {
  _$SurahModelCopyWithImpl(this._self, this._then);

  final SurahModel _self;
  final $Res Function(SurahModel) _then;

/// Create a copy of SurahModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? number = freezed,Object? name = freezed,Object? englishName = freezed,Object? englishNameTranslation = freezed,Object? numberOfAyahs = freezed,Object? revelationType = freezed,}) {
  return _then(_self.copyWith(
number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as num?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,englishName: freezed == englishName ? _self.englishName : englishName // ignore: cast_nullable_to_non_nullable
as String?,englishNameTranslation: freezed == englishNameTranslation ? _self.englishNameTranslation : englishNameTranslation // ignore: cast_nullable_to_non_nullable
as String?,numberOfAyahs: freezed == numberOfAyahs ? _self.numberOfAyahs : numberOfAyahs // ignore: cast_nullable_to_non_nullable
as String?,revelationType: freezed == revelationType ? _self.revelationType : revelationType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SurahModel].
extension SurahModelPatterns on SurahModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SurahModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SurahModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SurahModel value)  $default,){
final _that = this;
switch (_that) {
case _SurahModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SurahModel value)?  $default,){
final _that = this;
switch (_that) {
case _SurahModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( num? number,  String? name,  String? englishName,  String? englishNameTranslation,  String? numberOfAyahs,  String? revelationType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SurahModel() when $default != null:
return $default(_that.number,_that.name,_that.englishName,_that.englishNameTranslation,_that.numberOfAyahs,_that.revelationType);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( num? number,  String? name,  String? englishName,  String? englishNameTranslation,  String? numberOfAyahs,  String? revelationType)  $default,) {final _that = this;
switch (_that) {
case _SurahModel():
return $default(_that.number,_that.name,_that.englishName,_that.englishNameTranslation,_that.numberOfAyahs,_that.revelationType);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( num? number,  String? name,  String? englishName,  String? englishNameTranslation,  String? numberOfAyahs,  String? revelationType)?  $default,) {final _that = this;
switch (_that) {
case _SurahModel() when $default != null:
return $default(_that.number,_that.name,_that.englishName,_that.englishNameTranslation,_that.numberOfAyahs,_that.revelationType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SurahModel extends SurahModel {
  const _SurahModel({this.number, this.name, this.englishName, this.englishNameTranslation, this.numberOfAyahs, this.revelationType}): super._();
  factory _SurahModel.fromJson(Map<String, dynamic> json) => _$SurahModelFromJson(json);

@override final  num? number;
@override final  String? name;
@override final  String? englishName;
@override final  String? englishNameTranslation;
@override final  String? numberOfAyahs;
@override final  String? revelationType;

/// Create a copy of SurahModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SurahModelCopyWith<_SurahModel> get copyWith => __$SurahModelCopyWithImpl<_SurahModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SurahModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SurahModel&&(identical(other.number, number) || other.number == number)&&(identical(other.name, name) || other.name == name)&&(identical(other.englishName, englishName) || other.englishName == englishName)&&(identical(other.englishNameTranslation, englishNameTranslation) || other.englishNameTranslation == englishNameTranslation)&&(identical(other.numberOfAyahs, numberOfAyahs) || other.numberOfAyahs == numberOfAyahs)&&(identical(other.revelationType, revelationType) || other.revelationType == revelationType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,name,englishName,englishNameTranslation,numberOfAyahs,revelationType);

@override
String toString() {
  return 'SurahModel(number: $number, name: $name, englishName: $englishName, englishNameTranslation: $englishNameTranslation, numberOfAyahs: $numberOfAyahs, revelationType: $revelationType)';
}


}

/// @nodoc
abstract mixin class _$SurahModelCopyWith<$Res> implements $SurahModelCopyWith<$Res> {
  factory _$SurahModelCopyWith(_SurahModel value, $Res Function(_SurahModel) _then) = __$SurahModelCopyWithImpl;
@override @useResult
$Res call({
 num? number, String? name, String? englishName, String? englishNameTranslation, String? numberOfAyahs, String? revelationType
});




}
/// @nodoc
class __$SurahModelCopyWithImpl<$Res>
    implements _$SurahModelCopyWith<$Res> {
  __$SurahModelCopyWithImpl(this._self, this._then);

  final _SurahModel _self;
  final $Res Function(_SurahModel) _then;

/// Create a copy of SurahModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? number = freezed,Object? name = freezed,Object? englishName = freezed,Object? englishNameTranslation = freezed,Object? numberOfAyahs = freezed,Object? revelationType = freezed,}) {
  return _then(_SurahModel(
number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as num?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,englishName: freezed == englishName ? _self.englishName : englishName // ignore: cast_nullable_to_non_nullable
as String?,englishNameTranslation: freezed == englishNameTranslation ? _self.englishNameTranslation : englishNameTranslation // ignore: cast_nullable_to_non_nullable
as String?,numberOfAyahs: freezed == numberOfAyahs ? _self.numberOfAyahs : numberOfAyahs // ignore: cast_nullable_to_non_nullable
as String?,revelationType: freezed == revelationType ? _self.revelationType : revelationType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
