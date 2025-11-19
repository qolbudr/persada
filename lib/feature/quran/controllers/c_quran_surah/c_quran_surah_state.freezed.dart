// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'c_quran_surah_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CQuranSurahState {

 List<SurahModel> get surahs; Status get status;
/// Create a copy of CQuranSurahState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CQuranSurahStateCopyWith<CQuranSurahState> get copyWith => _$CQuranSurahStateCopyWithImpl<CQuranSurahState>(this as CQuranSurahState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CQuranSurahState&&const DeepCollectionEquality().equals(other.surahs, surahs)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(surahs),status);

@override
String toString() {
  return 'CQuranSurahState(surahs: $surahs, status: $status)';
}


}

/// @nodoc
abstract mixin class $CQuranSurahStateCopyWith<$Res>  {
  factory $CQuranSurahStateCopyWith(CQuranSurahState value, $Res Function(CQuranSurahState) _then) = _$CQuranSurahStateCopyWithImpl;
@useResult
$Res call({
 List<SurahModel> surahs, Status status
});




}
/// @nodoc
class _$CQuranSurahStateCopyWithImpl<$Res>
    implements $CQuranSurahStateCopyWith<$Res> {
  _$CQuranSurahStateCopyWithImpl(this._self, this._then);

  final CQuranSurahState _self;
  final $Res Function(CQuranSurahState) _then;

/// Create a copy of CQuranSurahState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? surahs = null,Object? status = null,}) {
  return _then(_self.copyWith(
surahs: null == surahs ? _self.surahs : surahs // ignore: cast_nullable_to_non_nullable
as List<SurahModel>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,
  ));
}

}


/// Adds pattern-matching-related methods to [CQuranSurahState].
extension CQuranSurahStatePatterns on CQuranSurahState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CQuranSurahState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CQuranSurahState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CQuranSurahState value)  $default,){
final _that = this;
switch (_that) {
case _CQuranSurahState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CQuranSurahState value)?  $default,){
final _that = this;
switch (_that) {
case _CQuranSurahState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SurahModel> surahs,  Status status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CQuranSurahState() when $default != null:
return $default(_that.surahs,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SurahModel> surahs,  Status status)  $default,) {final _that = this;
switch (_that) {
case _CQuranSurahState():
return $default(_that.surahs,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SurahModel> surahs,  Status status)?  $default,) {final _that = this;
switch (_that) {
case _CQuranSurahState() when $default != null:
return $default(_that.surahs,_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _CQuranSurahState extends CQuranSurahState {
  const _CQuranSurahState({final  List<SurahModel> surahs = const [], this.status = const Status.initial()}): _surahs = surahs,super._();
  

 final  List<SurahModel> _surahs;
@override@JsonKey() List<SurahModel> get surahs {
  if (_surahs is EqualUnmodifiableListView) return _surahs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_surahs);
}

@override@JsonKey() final  Status status;

/// Create a copy of CQuranSurahState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CQuranSurahStateCopyWith<_CQuranSurahState> get copyWith => __$CQuranSurahStateCopyWithImpl<_CQuranSurahState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CQuranSurahState&&const DeepCollectionEquality().equals(other._surahs, _surahs)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_surahs),status);

@override
String toString() {
  return 'CQuranSurahState(surahs: $surahs, status: $status)';
}


}

/// @nodoc
abstract mixin class _$CQuranSurahStateCopyWith<$Res> implements $CQuranSurahStateCopyWith<$Res> {
  factory _$CQuranSurahStateCopyWith(_CQuranSurahState value, $Res Function(_CQuranSurahState) _then) = __$CQuranSurahStateCopyWithImpl;
@override @useResult
$Res call({
 List<SurahModel> surahs, Status status
});




}
/// @nodoc
class __$CQuranSurahStateCopyWithImpl<$Res>
    implements _$CQuranSurahStateCopyWith<$Res> {
  __$CQuranSurahStateCopyWithImpl(this._self, this._then);

  final _CQuranSurahState _self;
  final $Res Function(_CQuranSurahState) _then;

/// Create a copy of CQuranSurahState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? surahs = null,Object? status = null,}) {
  return _then(_CQuranSurahState(
surahs: null == surahs ? _self._surahs : surahs // ignore: cast_nullable_to_non_nullable
as List<SurahModel>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,
  ));
}


}

// dart format on
