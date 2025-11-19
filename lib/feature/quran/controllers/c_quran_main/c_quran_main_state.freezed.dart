// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'c_quran_main_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CQuranMainState {

 List<ReciterModel> get reciters; Status get status;
/// Create a copy of CQuranMainState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CQuranMainStateCopyWith<CQuranMainState> get copyWith => _$CQuranMainStateCopyWithImpl<CQuranMainState>(this as CQuranMainState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CQuranMainState&&const DeepCollectionEquality().equals(other.reciters, reciters)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(reciters),status);

@override
String toString() {
  return 'CQuranMainState(reciters: $reciters, status: $status)';
}


}

/// @nodoc
abstract mixin class $CQuranMainStateCopyWith<$Res>  {
  factory $CQuranMainStateCopyWith(CQuranMainState value, $Res Function(CQuranMainState) _then) = _$CQuranMainStateCopyWithImpl;
@useResult
$Res call({
 List<ReciterModel> reciters, Status status
});




}
/// @nodoc
class _$CQuranMainStateCopyWithImpl<$Res>
    implements $CQuranMainStateCopyWith<$Res> {
  _$CQuranMainStateCopyWithImpl(this._self, this._then);

  final CQuranMainState _self;
  final $Res Function(CQuranMainState) _then;

/// Create a copy of CQuranMainState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reciters = null,Object? status = null,}) {
  return _then(_self.copyWith(
reciters: null == reciters ? _self.reciters : reciters // ignore: cast_nullable_to_non_nullable
as List<ReciterModel>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,
  ));
}

}


/// Adds pattern-matching-related methods to [CQuranMainState].
extension CQuranMainStatePatterns on CQuranMainState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CQuranMainState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CQuranMainState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CQuranMainState value)  $default,){
final _that = this;
switch (_that) {
case _CQuranMainState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CQuranMainState value)?  $default,){
final _that = this;
switch (_that) {
case _CQuranMainState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ReciterModel> reciters,  Status status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CQuranMainState() when $default != null:
return $default(_that.reciters,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ReciterModel> reciters,  Status status)  $default,) {final _that = this;
switch (_that) {
case _CQuranMainState():
return $default(_that.reciters,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ReciterModel> reciters,  Status status)?  $default,) {final _that = this;
switch (_that) {
case _CQuranMainState() when $default != null:
return $default(_that.reciters,_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _CQuranMainState extends CQuranMainState {
  const _CQuranMainState({final  List<ReciterModel> reciters = const [], this.status = const Status.initial()}): _reciters = reciters,super._();
  

 final  List<ReciterModel> _reciters;
@override@JsonKey() List<ReciterModel> get reciters {
  if (_reciters is EqualUnmodifiableListView) return _reciters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reciters);
}

@override@JsonKey() final  Status status;

/// Create a copy of CQuranMainState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CQuranMainStateCopyWith<_CQuranMainState> get copyWith => __$CQuranMainStateCopyWithImpl<_CQuranMainState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CQuranMainState&&const DeepCollectionEquality().equals(other._reciters, _reciters)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_reciters),status);

@override
String toString() {
  return 'CQuranMainState(reciters: $reciters, status: $status)';
}


}

/// @nodoc
abstract mixin class _$CQuranMainStateCopyWith<$Res> implements $CQuranMainStateCopyWith<$Res> {
  factory _$CQuranMainStateCopyWith(_CQuranMainState value, $Res Function(_CQuranMainState) _then) = __$CQuranMainStateCopyWithImpl;
@override @useResult
$Res call({
 List<ReciterModel> reciters, Status status
});




}
/// @nodoc
class __$CQuranMainStateCopyWithImpl<$Res>
    implements _$CQuranMainStateCopyWith<$Res> {
  __$CQuranMainStateCopyWithImpl(this._self, this._then);

  final _CQuranMainState _self;
  final $Res Function(_CQuranMainState) _then;

/// Create a copy of CQuranMainState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reciters = null,Object? status = null,}) {
  return _then(_CQuranMainState(
reciters: null == reciters ? _self._reciters : reciters // ignore: cast_nullable_to_non_nullable
as List<ReciterModel>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,
  ));
}


}

// dart format on
