// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'c_quran_player_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CQuranPlayerState {

 ReciterModel? get currentReciter; SurahModel? get currentSurah; List<AudioSource> get playlist; Status get status;
/// Create a copy of CQuranPlayerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CQuranPlayerStateCopyWith<CQuranPlayerState> get copyWith => _$CQuranPlayerStateCopyWithImpl<CQuranPlayerState>(this as CQuranPlayerState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CQuranPlayerState&&(identical(other.currentReciter, currentReciter) || other.currentReciter == currentReciter)&&(identical(other.currentSurah, currentSurah) || other.currentSurah == currentSurah)&&const DeepCollectionEquality().equals(other.playlist, playlist)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,currentReciter,currentSurah,const DeepCollectionEquality().hash(playlist),status);

@override
String toString() {
  return 'CQuranPlayerState(currentReciter: $currentReciter, currentSurah: $currentSurah, playlist: $playlist, status: $status)';
}


}

/// @nodoc
abstract mixin class $CQuranPlayerStateCopyWith<$Res>  {
  factory $CQuranPlayerStateCopyWith(CQuranPlayerState value, $Res Function(CQuranPlayerState) _then) = _$CQuranPlayerStateCopyWithImpl;
@useResult
$Res call({
 ReciterModel? currentReciter, SurahModel? currentSurah, List<AudioSource> playlist, Status status
});


$ReciterModelCopyWith<$Res>? get currentReciter;$SurahModelCopyWith<$Res>? get currentSurah;

}
/// @nodoc
class _$CQuranPlayerStateCopyWithImpl<$Res>
    implements $CQuranPlayerStateCopyWith<$Res> {
  _$CQuranPlayerStateCopyWithImpl(this._self, this._then);

  final CQuranPlayerState _self;
  final $Res Function(CQuranPlayerState) _then;

/// Create a copy of CQuranPlayerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentReciter = freezed,Object? currentSurah = freezed,Object? playlist = null,Object? status = null,}) {
  return _then(_self.copyWith(
currentReciter: freezed == currentReciter ? _self.currentReciter : currentReciter // ignore: cast_nullable_to_non_nullable
as ReciterModel?,currentSurah: freezed == currentSurah ? _self.currentSurah : currentSurah // ignore: cast_nullable_to_non_nullable
as SurahModel?,playlist: null == playlist ? _self.playlist : playlist // ignore: cast_nullable_to_non_nullable
as List<AudioSource>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,
  ));
}
/// Create a copy of CQuranPlayerState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReciterModelCopyWith<$Res>? get currentReciter {
    if (_self.currentReciter == null) {
    return null;
  }

  return $ReciterModelCopyWith<$Res>(_self.currentReciter!, (value) {
    return _then(_self.copyWith(currentReciter: value));
  });
}/// Create a copy of CQuranPlayerState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SurahModelCopyWith<$Res>? get currentSurah {
    if (_self.currentSurah == null) {
    return null;
  }

  return $SurahModelCopyWith<$Res>(_self.currentSurah!, (value) {
    return _then(_self.copyWith(currentSurah: value));
  });
}
}


/// Adds pattern-matching-related methods to [CQuranPlayerState].
extension CQuranPlayerStatePatterns on CQuranPlayerState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CQuranPlayerState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CQuranPlayerState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CQuranPlayerState value)  $default,){
final _that = this;
switch (_that) {
case _CQuranPlayerState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CQuranPlayerState value)?  $default,){
final _that = this;
switch (_that) {
case _CQuranPlayerState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ReciterModel? currentReciter,  SurahModel? currentSurah,  List<AudioSource> playlist,  Status status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CQuranPlayerState() when $default != null:
return $default(_that.currentReciter,_that.currentSurah,_that.playlist,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ReciterModel? currentReciter,  SurahModel? currentSurah,  List<AudioSource> playlist,  Status status)  $default,) {final _that = this;
switch (_that) {
case _CQuranPlayerState():
return $default(_that.currentReciter,_that.currentSurah,_that.playlist,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ReciterModel? currentReciter,  SurahModel? currentSurah,  List<AudioSource> playlist,  Status status)?  $default,) {final _that = this;
switch (_that) {
case _CQuranPlayerState() when $default != null:
return $default(_that.currentReciter,_that.currentSurah,_that.playlist,_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _CQuranPlayerState extends CQuranPlayerState {
  const _CQuranPlayerState({this.currentReciter, this.currentSurah, final  List<AudioSource> playlist = const [], this.status = const Status.initial()}): _playlist = playlist,super._();
  

@override final  ReciterModel? currentReciter;
@override final  SurahModel? currentSurah;
 final  List<AudioSource> _playlist;
@override@JsonKey() List<AudioSource> get playlist {
  if (_playlist is EqualUnmodifiableListView) return _playlist;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_playlist);
}

@override@JsonKey() final  Status status;

/// Create a copy of CQuranPlayerState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CQuranPlayerStateCopyWith<_CQuranPlayerState> get copyWith => __$CQuranPlayerStateCopyWithImpl<_CQuranPlayerState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CQuranPlayerState&&(identical(other.currentReciter, currentReciter) || other.currentReciter == currentReciter)&&(identical(other.currentSurah, currentSurah) || other.currentSurah == currentSurah)&&const DeepCollectionEquality().equals(other._playlist, _playlist)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,currentReciter,currentSurah,const DeepCollectionEquality().hash(_playlist),status);

@override
String toString() {
  return 'CQuranPlayerState(currentReciter: $currentReciter, currentSurah: $currentSurah, playlist: $playlist, status: $status)';
}


}

/// @nodoc
abstract mixin class _$CQuranPlayerStateCopyWith<$Res> implements $CQuranPlayerStateCopyWith<$Res> {
  factory _$CQuranPlayerStateCopyWith(_CQuranPlayerState value, $Res Function(_CQuranPlayerState) _then) = __$CQuranPlayerStateCopyWithImpl;
@override @useResult
$Res call({
 ReciterModel? currentReciter, SurahModel? currentSurah, List<AudioSource> playlist, Status status
});


@override $ReciterModelCopyWith<$Res>? get currentReciter;@override $SurahModelCopyWith<$Res>? get currentSurah;

}
/// @nodoc
class __$CQuranPlayerStateCopyWithImpl<$Res>
    implements _$CQuranPlayerStateCopyWith<$Res> {
  __$CQuranPlayerStateCopyWithImpl(this._self, this._then);

  final _CQuranPlayerState _self;
  final $Res Function(_CQuranPlayerState) _then;

/// Create a copy of CQuranPlayerState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentReciter = freezed,Object? currentSurah = freezed,Object? playlist = null,Object? status = null,}) {
  return _then(_CQuranPlayerState(
currentReciter: freezed == currentReciter ? _self.currentReciter : currentReciter // ignore: cast_nullable_to_non_nullable
as ReciterModel?,currentSurah: freezed == currentSurah ? _self.currentSurah : currentSurah // ignore: cast_nullable_to_non_nullable
as SurahModel?,playlist: null == playlist ? _self._playlist : playlist // ignore: cast_nullable_to_non_nullable
as List<AudioSource>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,
  ));
}

/// Create a copy of CQuranPlayerState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReciterModelCopyWith<$Res>? get currentReciter {
    if (_self.currentReciter == null) {
    return null;
  }

  return $ReciterModelCopyWith<$Res>(_self.currentReciter!, (value) {
    return _then(_self.copyWith(currentReciter: value));
  });
}/// Create a copy of CQuranPlayerState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SurahModelCopyWith<$Res>? get currentSurah {
    if (_self.currentSurah == null) {
    return null;
  }

  return $SurahModelCopyWith<$Res>(_self.currentSurah!, (value) {
    return _then(_self.copyWith(currentSurah: value));
  });
}
}

// dart format on
