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
  String get frontDefault => throw _privateConstructorUsedError;
  String? get frongShiny => throw _privateConstructorUsedError;
  String? get backDefault => throw _privateConstructorUsedError;
  String? get backShiny => throw _privateConstructorUsedError;

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
      {String frontDefault,
      String? frongShiny,
      String? backDefault,
      String? backShiny});
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
    Object? frontDefault = null,
    Object? frongShiny = freezed,
    Object? backDefault = freezed,
    Object? backShiny = freezed,
  }) {
    return _then(_value.copyWith(
      frontDefault: null == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
      frongShiny: freezed == frongShiny
          ? _value.frongShiny
          : frongShiny // ignore: cast_nullable_to_non_nullable
              as String?,
      backDefault: freezed == backDefault
          ? _value.backDefault
          : backDefault // ignore: cast_nullable_to_non_nullable
              as String?,
      backShiny: freezed == backShiny
          ? _value.backShiny
          : backShiny // ignore: cast_nullable_to_non_nullable
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
      {String frontDefault,
      String? frongShiny,
      String? backDefault,
      String? backShiny});
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
    Object? frontDefault = null,
    Object? frongShiny = freezed,
    Object? backDefault = freezed,
    Object? backShiny = freezed,
  }) {
    return _then(_$PokemonSpritesModelImpl(
      frontDefault: null == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
      frongShiny: freezed == frongShiny
          ? _value.frongShiny
          : frongShiny // ignore: cast_nullable_to_non_nullable
              as String?,
      backDefault: freezed == backDefault
          ? _value.backDefault
          : backDefault // ignore: cast_nullable_to_non_nullable
              as String?,
      backShiny: freezed == backShiny
          ? _value.backShiny
          : backShiny // ignore: cast_nullable_to_non_nullable
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
      {required this.frontDefault,
      this.frongShiny,
      this.backDefault,
      this.backShiny});

  factory _$PokemonSpritesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonSpritesModelImplFromJson(json);

  @override
  final String frontDefault;
  @override
  final String? frongShiny;
  @override
  final String? backDefault;
  @override
  final String? backShiny;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PokemonSpritesModel(frontDefault: $frontDefault, frongShiny: $frongShiny, backDefault: $backDefault, backShiny: $backShiny)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PokemonSpritesModel'))
      ..add(DiagnosticsProperty('frontDefault', frontDefault))
      ..add(DiagnosticsProperty('frongShiny', frongShiny))
      ..add(DiagnosticsProperty('backDefault', backDefault))
      ..add(DiagnosticsProperty('backShiny', backShiny));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonSpritesModelImpl &&
            (identical(other.frontDefault, frontDefault) ||
                other.frontDefault == frontDefault) &&
            (identical(other.frongShiny, frongShiny) ||
                other.frongShiny == frongShiny) &&
            (identical(other.backDefault, backDefault) ||
                other.backDefault == backDefault) &&
            (identical(other.backShiny, backShiny) ||
                other.backShiny == backShiny));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, frontDefault, frongShiny, backDefault, backShiny);

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
      {required final String frontDefault,
      final String? frongShiny,
      final String? backDefault,
      final String? backShiny}) = _$PokemonSpritesModelImpl;

  factory _PokemonSpritesModel.fromJson(Map<String, dynamic> json) =
      _$PokemonSpritesModelImpl.fromJson;

  @override
  String get frontDefault;
  @override
  String? get frongShiny;
  @override
  String? get backDefault;
  @override
  String? get backShiny;

  /// Create a copy of PokemonSpritesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonSpritesModelImplCopyWith<_$PokemonSpritesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
