// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'apps_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getApps,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getApps,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getApps,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAppsEvent value) getApps,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetAppsEvent value)? getApps,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAppsEvent value)? getApps,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppsEventCopyWith<$Res> {
  factory $AppsEventCopyWith(AppsEvent value, $Res Function(AppsEvent) then) =
      _$AppsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppsEventCopyWithImpl<$Res> implements $AppsEventCopyWith<$Res> {
  _$AppsEventCopyWithImpl(this._value, this._then);

  final AppsEvent _value;
  // ignore: unused_field
  final $Res Function(AppsEvent) _then;
}

/// @nodoc
abstract class $GetAppsEventCopyWith<$Res> {
  factory $GetAppsEventCopyWith(
          GetAppsEvent value, $Res Function(GetAppsEvent) then) =
      _$GetAppsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetAppsEventCopyWithImpl<$Res> extends _$AppsEventCopyWithImpl<$Res>
    implements $GetAppsEventCopyWith<$Res> {
  _$GetAppsEventCopyWithImpl(
      GetAppsEvent _value, $Res Function(GetAppsEvent) _then)
      : super(_value, (v) => _then(v as GetAppsEvent));

  @override
  GetAppsEvent get _value => super._value as GetAppsEvent;
}

/// @nodoc

class _$GetAppsEvent implements GetAppsEvent {
  const _$GetAppsEvent();

  @override
  String toString() {
    return 'AppsEvent.getApps()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetAppsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getApps,
  }) {
    return getApps();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getApps,
  }) {
    return getApps?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getApps,
    required TResult orElse(),
  }) {
    if (getApps != null) {
      return getApps();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAppsEvent value) getApps,
  }) {
    return getApps(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetAppsEvent value)? getApps,
  }) {
    return getApps?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAppsEvent value)? getApps,
    required TResult orElse(),
  }) {
    if (getApps != null) {
      return getApps(this);
    }
    return orElse();
  }
}

abstract class GetAppsEvent implements AppsEvent {
  const factory GetAppsEvent() = _$GetAppsEvent;
}

/// @nodoc
mixin _$AppsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception) error,
    required TResult Function(
            List<Application> installedApps, List<Application> systemApps)
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(
            List<Application> installedApps, List<Application> systemApps)?
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(
            List<Application> installedApps, List<Application> systemApps)?
        success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppsInitialState value) initial,
    required TResult Function(_AppsLoadingState value) loading,
    required TResult Function(_AppsErrorState value) error,
    required TResult Function(_AppsSuccessState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AppsInitialState value)? initial,
    TResult Function(_AppsLoadingState value)? loading,
    TResult Function(_AppsErrorState value)? error,
    TResult Function(_AppsSuccessState value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppsInitialState value)? initial,
    TResult Function(_AppsLoadingState value)? loading,
    TResult Function(_AppsErrorState value)? error,
    TResult Function(_AppsSuccessState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppsStateCopyWith<$Res> {
  factory $AppsStateCopyWith(AppsState value, $Res Function(AppsState) then) =
      _$AppsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppsStateCopyWithImpl<$Res> implements $AppsStateCopyWith<$Res> {
  _$AppsStateCopyWithImpl(this._value, this._then);

  final AppsState _value;
  // ignore: unused_field
  final $Res Function(AppsState) _then;
}

/// @nodoc
abstract class _$AppsInitialStateCopyWith<$Res> {
  factory _$AppsInitialStateCopyWith(
          _AppsInitialState value, $Res Function(_AppsInitialState) then) =
      __$AppsInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$AppsInitialStateCopyWithImpl<$Res>
    extends _$AppsStateCopyWithImpl<$Res>
    implements _$AppsInitialStateCopyWith<$Res> {
  __$AppsInitialStateCopyWithImpl(
      _AppsInitialState _value, $Res Function(_AppsInitialState) _then)
      : super(_value, (v) => _then(v as _AppsInitialState));

  @override
  _AppsInitialState get _value => super._value as _AppsInitialState;
}

/// @nodoc

class _$_AppsInitialState implements _AppsInitialState {
  const _$_AppsInitialState();

  @override
  String toString() {
    return 'AppsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AppsInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception) error,
    required TResult Function(
            List<Application> installedApps, List<Application> systemApps)
        success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(
            List<Application> installedApps, List<Application> systemApps)?
        success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(
            List<Application> installedApps, List<Application> systemApps)?
        success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppsInitialState value) initial,
    required TResult Function(_AppsLoadingState value) loading,
    required TResult Function(_AppsErrorState value) error,
    required TResult Function(_AppsSuccessState value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AppsInitialState value)? initial,
    TResult Function(_AppsLoadingState value)? loading,
    TResult Function(_AppsErrorState value)? error,
    TResult Function(_AppsSuccessState value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppsInitialState value)? initial,
    TResult Function(_AppsLoadingState value)? loading,
    TResult Function(_AppsErrorState value)? error,
    TResult Function(_AppsSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _AppsInitialState implements AppsState {
  const factory _AppsInitialState() = _$_AppsInitialState;
}

/// @nodoc
abstract class _$AppsLoadingStateCopyWith<$Res> {
  factory _$AppsLoadingStateCopyWith(
          _AppsLoadingState value, $Res Function(_AppsLoadingState) then) =
      __$AppsLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$AppsLoadingStateCopyWithImpl<$Res>
    extends _$AppsStateCopyWithImpl<$Res>
    implements _$AppsLoadingStateCopyWith<$Res> {
  __$AppsLoadingStateCopyWithImpl(
      _AppsLoadingState _value, $Res Function(_AppsLoadingState) _then)
      : super(_value, (v) => _then(v as _AppsLoadingState));

  @override
  _AppsLoadingState get _value => super._value as _AppsLoadingState;
}

/// @nodoc

class _$_AppsLoadingState implements _AppsLoadingState {
  const _$_AppsLoadingState();

  @override
  String toString() {
    return 'AppsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AppsLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception) error,
    required TResult Function(
            List<Application> installedApps, List<Application> systemApps)
        success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(
            List<Application> installedApps, List<Application> systemApps)?
        success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(
            List<Application> installedApps, List<Application> systemApps)?
        success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppsInitialState value) initial,
    required TResult Function(_AppsLoadingState value) loading,
    required TResult Function(_AppsErrorState value) error,
    required TResult Function(_AppsSuccessState value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AppsInitialState value)? initial,
    TResult Function(_AppsLoadingState value)? loading,
    TResult Function(_AppsErrorState value)? error,
    TResult Function(_AppsSuccessState value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppsInitialState value)? initial,
    TResult Function(_AppsLoadingState value)? loading,
    TResult Function(_AppsErrorState value)? error,
    TResult Function(_AppsSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _AppsLoadingState implements AppsState {
  const factory _AppsLoadingState() = _$_AppsLoadingState;
}

/// @nodoc
abstract class _$AppsErrorStateCopyWith<$Res> {
  factory _$AppsErrorStateCopyWith(
          _AppsErrorState value, $Res Function(_AppsErrorState) then) =
      __$AppsErrorStateCopyWithImpl<$Res>;
  $Res call({Object exception});
}

/// @nodoc
class __$AppsErrorStateCopyWithImpl<$Res> extends _$AppsStateCopyWithImpl<$Res>
    implements _$AppsErrorStateCopyWith<$Res> {
  __$AppsErrorStateCopyWithImpl(
      _AppsErrorState _value, $Res Function(_AppsErrorState) _then)
      : super(_value, (v) => _then(v as _AppsErrorState));

  @override
  _AppsErrorState get _value => super._value as _AppsErrorState;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_AppsErrorState(
      exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc

class _$_AppsErrorState implements _AppsErrorState {
  const _$_AppsErrorState(this.exception);

  @override
  final Object exception;

  @override
  String toString() {
    return 'AppsState.error(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppsErrorState &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(exception));

  @JsonKey(ignore: true)
  @override
  _$AppsErrorStateCopyWith<_AppsErrorState> get copyWith =>
      __$AppsErrorStateCopyWithImpl<_AppsErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception) error,
    required TResult Function(
            List<Application> installedApps, List<Application> systemApps)
        success,
  }) {
    return error(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(
            List<Application> installedApps, List<Application> systemApps)?
        success,
  }) {
    return error?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(
            List<Application> installedApps, List<Application> systemApps)?
        success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppsInitialState value) initial,
    required TResult Function(_AppsLoadingState value) loading,
    required TResult Function(_AppsErrorState value) error,
    required TResult Function(_AppsSuccessState value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AppsInitialState value)? initial,
    TResult Function(_AppsLoadingState value)? loading,
    TResult Function(_AppsErrorState value)? error,
    TResult Function(_AppsSuccessState value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppsInitialState value)? initial,
    TResult Function(_AppsLoadingState value)? loading,
    TResult Function(_AppsErrorState value)? error,
    TResult Function(_AppsSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _AppsErrorState implements AppsState {
  const factory _AppsErrorState(final Object exception) = _$_AppsErrorState;

  Object get exception => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AppsErrorStateCopyWith<_AppsErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AppsSuccessStateCopyWith<$Res> {
  factory _$AppsSuccessStateCopyWith(
          _AppsSuccessState value, $Res Function(_AppsSuccessState) then) =
      __$AppsSuccessStateCopyWithImpl<$Res>;
  $Res call({List<Application> installedApps, List<Application> systemApps});
}

/// @nodoc
class __$AppsSuccessStateCopyWithImpl<$Res>
    extends _$AppsStateCopyWithImpl<$Res>
    implements _$AppsSuccessStateCopyWith<$Res> {
  __$AppsSuccessStateCopyWithImpl(
      _AppsSuccessState _value, $Res Function(_AppsSuccessState) _then)
      : super(_value, (v) => _then(v as _AppsSuccessState));

  @override
  _AppsSuccessState get _value => super._value as _AppsSuccessState;

  @override
  $Res call({
    Object? installedApps = freezed,
    Object? systemApps = freezed,
  }) {
    return _then(_AppsSuccessState(
      installedApps == freezed
          ? _value.installedApps
          : installedApps // ignore: cast_nullable_to_non_nullable
              as List<Application>,
      systemApps == freezed
          ? _value.systemApps
          : systemApps // ignore: cast_nullable_to_non_nullable
              as List<Application>,
    ));
  }
}

/// @nodoc

class _$_AppsSuccessState implements _AppsSuccessState {
  const _$_AppsSuccessState(
      final List<Application> installedApps, final List<Application> systemApps)
      : _installedApps = installedApps,
        _systemApps = systemApps;

  final List<Application> _installedApps;
  @override
  List<Application> get installedApps {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_installedApps);
  }

  final List<Application> _systemApps;
  @override
  List<Application> get systemApps {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_systemApps);
  }

  @override
  String toString() {
    return 'AppsState.success(installedApps: $installedApps, systemApps: $systemApps)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppsSuccessState &&
            const DeepCollectionEquality()
                .equals(other.installedApps, installedApps) &&
            const DeepCollectionEquality()
                .equals(other.systemApps, systemApps));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(installedApps),
      const DeepCollectionEquality().hash(systemApps));

  @JsonKey(ignore: true)
  @override
  _$AppsSuccessStateCopyWith<_AppsSuccessState> get copyWith =>
      __$AppsSuccessStateCopyWithImpl<_AppsSuccessState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception) error,
    required TResult Function(
            List<Application> installedApps, List<Application> systemApps)
        success,
  }) {
    return success(installedApps, systemApps);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(
            List<Application> installedApps, List<Application> systemApps)?
        success,
  }) {
    return success?.call(installedApps, systemApps);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(
            List<Application> installedApps, List<Application> systemApps)?
        success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(installedApps, systemApps);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppsInitialState value) initial,
    required TResult Function(_AppsLoadingState value) loading,
    required TResult Function(_AppsErrorState value) error,
    required TResult Function(_AppsSuccessState value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AppsInitialState value)? initial,
    TResult Function(_AppsLoadingState value)? loading,
    TResult Function(_AppsErrorState value)? error,
    TResult Function(_AppsSuccessState value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppsInitialState value)? initial,
    TResult Function(_AppsLoadingState value)? loading,
    TResult Function(_AppsErrorState value)? error,
    TResult Function(_AppsSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _AppsSuccessState implements AppsState {
  const factory _AppsSuccessState(final List<Application> installedApps,
      final List<Application> systemApps) = _$_AppsSuccessState;

  List<Application> get installedApps => throw _privateConstructorUsedError;
  List<Application> get systemApps => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AppsSuccessStateCopyWith<_AppsSuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}
