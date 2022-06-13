// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppState {
  ThemeMode get themeMode => throw _privateConstructorUsedError;
  AppLocale get appLocale => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
  $Res call({ThemeMode themeMode, AppLocale appLocale});
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object? themeMode = freezed,
    Object? appLocale = freezed,
  }) {
    return _then(_value.copyWith(
      themeMode: themeMode == freezed
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      appLocale: appLocale == freezed
          ? _value.appLocale
          : appLocale // ignore: cast_nullable_to_non_nullable
              as AppLocale,
    ));
  }
}

/// @nodoc
abstract class _$AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$AppStateCopyWith(_AppState value, $Res Function(_AppState) then) =
      __$AppStateCopyWithImpl<$Res>;
  @override
  $Res call({ThemeMode themeMode, AppLocale appLocale});
}

/// @nodoc
class __$AppStateCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$AppStateCopyWith<$Res> {
  __$AppStateCopyWithImpl(_AppState _value, $Res Function(_AppState) _then)
      : super(_value, (v) => _then(v as _AppState));

  @override
  _AppState get _value => super._value as _AppState;

  @override
  $Res call({
    Object? themeMode = freezed,
    Object? appLocale = freezed,
  }) {
    return _then(_AppState(
      themeMode: themeMode == freezed
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      appLocale: appLocale == freezed
          ? _value.appLocale
          : appLocale // ignore: cast_nullable_to_non_nullable
              as AppLocale,
    ));
  }
}

/// @nodoc

class _$_AppState implements _AppState {
  const _$_AppState({required this.themeMode, required this.appLocale});

  @override
  final ThemeMode themeMode;
  @override
  final AppLocale appLocale;

  @override
  String toString() {
    return 'AppState(themeMode: $themeMode, appLocale: $appLocale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppState &&
            const DeepCollectionEquality().equals(other.themeMode, themeMode) &&
            const DeepCollectionEquality().equals(other.appLocale, appLocale));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(themeMode),
      const DeepCollectionEquality().hash(appLocale));

  @JsonKey(ignore: true)
  @override
  _$AppStateCopyWith<_AppState> get copyWith =>
      __$AppStateCopyWithImpl<_AppState>(this, _$identity);
}

abstract class _AppState implements AppState {
  const factory _AppState(
      {required final ThemeMode themeMode,
      required final AppLocale appLocale}) = _$_AppState;

  @override
  ThemeMode get themeMode => throw _privateConstructorUsedError;
  @override
  AppLocale get appLocale => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AppStateCopyWith<_AppState> get copyWith =>
      throw _privateConstructorUsedError;
}
