// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_sprites_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonSpritesModel _$PokemonSpritesModelFromJson(Map<String, dynamic> json) {
  return _PokemonSpritesModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonSpritesModel {
  String get front_default => throw _privateConstructorUsedError;
  String? get front_shiny => throw _privateConstructorUsedError;
  String? get back_default => throw _privateConstructorUsedError;
  String? get back_shiny => throw _privateConstructorUsedError;

  /// Serializes this PokemonSpritesModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonSpritesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonSpritesModelCopyWith<PokemonSpritesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSpritesModelCopyWith<$Res> {
  factory $PokemonSpritesModelCopyWith(
          PokemonSpritesModel value, $Res Function(PokemonSpritesModel) then) =
      _$PokemonSpritesModelCopyWithImpl<$Res, PokemonSpritesModel>;
  @useResult
  $Res call(
      {String front_default,
      String? front_shiny,
      String? back_default,
      String? back_shiny});
}

/// @nodoc
class _$PokemonSpritesModelCopyWithImpl<$Res, $Val extends PokemonSpritesModel>
    implements $PokemonSpritesModelCopyWith<$Res> {
  _$PokemonSpritesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonSpritesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? front_default = null,
    Object? front_shiny = freezed,
    Object? back_default = freezed,
    Object? back_shiny = freezed,
  }) {
    return _then(_value.copyWith(
      front_default: null == front_default
          ? _value.front_default
          : front_default // ignore: cast_nullable_to_non_nullable
              as String,
      front_shiny: freezed == front_shiny
          ? _value.front_shiny
          : front_shiny // ignore: cast_nullable_to_non_nullable
              as String?,
      back_default: freezed == back_default
          ? _value.back_default
          : back_default // ignore: cast_nullable_to_non_nullable
              as String?,
      back_shiny: freezed == back_shiny
          ? _value.back_shiny
          : back_shiny // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonSpritesModelImplCopyWith<$Res>
    implements $PokemonSpritesModelCopyWith<$Res> {
  factory _$$PokemonSpritesModelImplCopyWith(_$PokemonSpritesModelImpl value,
          $Res Function(_$PokemonSpritesModelImpl) then) =
      __$$PokemonSpritesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String front_default,
      String? front_shiny,
      String? back_default,
      String? back_shiny});
}

/// @nodoc
class __$$PokemonSpritesModelImplCopyWithImpl<$Res>
    extends _$PokemonSpritesModelCopyWithImpl<$Res, _$PokemonSpritesModelImpl>
    implements _$$PokemonSpritesModelImplCopyWith<$Res> {
  __$$PokemonSpritesModelImplCopyWithImpl(_$PokemonSpritesModelImpl _value,
      $Res Function(_$PokemonSpritesModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonSpritesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? front_default = null,
    Object? front_shiny = freezed,
    Object? back_default = freezed,
    Object? back_shiny = freezed,
  }) {
    return _then(_$PokemonSpritesModelImpl(
      front_default: null == front_default
          ? _value.front_default
          : front_default // ignore: cast_nullable_to_non_nullable
              as String,
      front_shiny: freezed == front_shiny
          ? _value.front_shiny
          : front_shiny // ignore: cast_nullable_to_non_nullable
              as String?,
      back_default: freezed == back_default
          ? _value.back_default
          : back_default // ignore: cast_nullable_to_non_nullable
              as String?,
      back_shiny: freezed == back_shiny
          ? _value.back_shiny
          : back_shiny // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonSpritesModelImpl
    with DiagnosticableTreeMixin
    implements _PokemonSpritesModel {
  const _$PokemonSpritesModelImpl(
      {required this.front_default,
      this.front_shiny,
      this.back_default,
      this.back_shiny});

  factory _$PokemonSpritesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonSpritesModelImplFromJson(json);

  @override
  final String front_default;
  @override
  final String? front_shiny;
  @override
  final String? back_default;
  @override
  final String? back_shiny;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PokemonSpritesModel(front_default: $front_default, front_shiny: $front_shiny, back_default: $back_default, back_shiny: $back_shiny)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PokemonSpritesModel'))
      ..add(DiagnosticsProperty('front_default', front_default))
      ..add(DiagnosticsProperty('front_shiny', front_shiny))
      ..add(DiagnosticsProperty('back_default', back_default))
      ..add(DiagnosticsProperty('back_shiny', back_shiny));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonSpritesModelImpl &&
            (identical(other.front_default, front_default) ||
                other.front_default == front_default) &&
            (identical(other.front_shiny, front_shiny) ||
                other.front_shiny == front_shiny) &&
            (identical(other.back_default, back_default) ||
                other.back_default == back_default) &&
            (identical(other.back_shiny, back_shiny) ||
                other.back_shiny == back_shiny));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, front_default, front_shiny, back_default, back_shiny);

  /// Create a copy of PokemonSpritesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonSpritesModelImplCopyWith<_$PokemonSpritesModelImpl> get copyWith =>
      __$$PokemonSpritesModelImplCopyWithImpl<_$PokemonSpritesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonSpritesModelImplToJson(
      this,
    );
  }
}

abstract class _PokemonSpritesModel implements PokemonSpritesModel {
  const factory _PokemonSpritesModel(
      {required final String front_default,
      final String? front_shiny,
      final String? back_default,
      final String? back_shiny}) = _$PokemonSpritesModelImpl;

  factory _PokemonSpritesModel.fromJson(Map<String, dynamic> json) =
      _$PokemonSpritesModelImpl.fromJson;

  @override
  String get front_default;
  @override
  String? get front_shiny;
  @override
  String? get back_default;
  @override
  String? get back_shiny;

  /// Create a copy of PokemonSpritesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonSpritesModelImplCopyWith<_$PokemonSpritesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonCriesModel _$PokemonCriesModelFromJson(Map<String, dynamic> json) {
  return _PokemonCriesModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonCriesModel {
  String? get latest => throw _privateConstructorUsedError;
  String? get legacy => throw _privateConstructorUsedError;

  /// Serializes this PokemonCriesModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonCriesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonCriesModelCopyWith<PokemonCriesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonCriesModelCopyWith<$Res> {
  factory $PokemonCriesModelCopyWith(
          PokemonCriesModel value, $Res Function(PokemonCriesModel) then) =
      _$PokemonCriesModelCopyWithImpl<$Res, PokemonCriesModel>;
  @useResult
  $Res call({String? latest, String? legacy});
}

/// @nodoc
class _$PokemonCriesModelCopyWithImpl<$Res, $Val extends PokemonCriesModel>
    implements $PokemonCriesModelCopyWith<$Res> {
  _$PokemonCriesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonCriesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latest = freezed,
    Object? legacy = freezed,
  }) {
    return _then(_value.copyWith(
      latest: freezed == latest
          ? _value.latest
          : latest // ignore: cast_nullable_to_non_nullable
              as String?,
      legacy: freezed == legacy
          ? _value.legacy
          : legacy // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonCriesModelImplCopyWith<$Res>
    implements $PokemonCriesModelCopyWith<$Res> {
  factory _$$PokemonCriesModelImplCopyWith(_$PokemonCriesModelImpl value,
          $Res Function(_$PokemonCriesModelImpl) then) =
      __$$PokemonCriesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? latest, String? legacy});
}

/// @nodoc
class __$$PokemonCriesModelImplCopyWithImpl<$Res>
    extends _$PokemonCriesModelCopyWithImpl<$Res, _$PokemonCriesModelImpl>
    implements _$$PokemonCriesModelImplCopyWith<$Res> {
  __$$PokemonCriesModelImplCopyWithImpl(_$PokemonCriesModelImpl _value,
      $Res Function(_$PokemonCriesModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonCriesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latest = freezed,
    Object? legacy = freezed,
  }) {
    return _then(_$PokemonCriesModelImpl(
      latest: freezed == latest
          ? _value.latest
          : latest // ignore: cast_nullable_to_non_nullable
              as String?,
      legacy: freezed == legacy
          ? _value.legacy
          : legacy // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonCriesModelImpl
    with DiagnosticableTreeMixin
    implements _PokemonCriesModel {
  const _$PokemonCriesModelImpl({this.latest, this.legacy});

  factory _$PokemonCriesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonCriesModelImplFromJson(json);

  @override
  final String? latest;
  @override
  final String? legacy;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PokemonCriesModel(latest: $latest, legacy: $legacy)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PokemonCriesModel'))
      ..add(DiagnosticsProperty('latest', latest))
      ..add(DiagnosticsProperty('legacy', legacy));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonCriesModelImpl &&
            (identical(other.latest, latest) || other.latest == latest) &&
            (identical(other.legacy, legacy) || other.legacy == legacy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, latest, legacy);

  /// Create a copy of PokemonCriesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonCriesModelImplCopyWith<_$PokemonCriesModelImpl> get copyWith =>
      __$$PokemonCriesModelImplCopyWithImpl<_$PokemonCriesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonCriesModelImplToJson(
      this,
    );
  }
}

abstract class _PokemonCriesModel implements PokemonCriesModel {
  const factory _PokemonCriesModel(
      {final String? latest, final String? legacy}) = _$PokemonCriesModelImpl;

  factory _PokemonCriesModel.fromJson(Map<String, dynamic> json) =
      _$PokemonCriesModelImpl.fromJson;

  @override
  String? get latest;
  @override
  String? get legacy;

  /// Create a copy of PokemonCriesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonCriesModelImplCopyWith<_$PokemonCriesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
