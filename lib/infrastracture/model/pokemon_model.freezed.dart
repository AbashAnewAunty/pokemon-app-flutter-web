// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonModel _$PokemonModelFromJson(Map<String, dynamic> json) {
  return _PokemonModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  int? get weight => throw _privateConstructorUsedError;
  PokemonSpritesModel get sprites => throw _privateConstructorUsedError;
  PokemonCriesModel get cries => throw _privateConstructorUsedError;
  List<PokemonTypeModel> get types => throw _privateConstructorUsedError;

  /// Serializes this PokemonModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonModelCopyWith<PokemonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonModelCopyWith<$Res> {
  factory $PokemonModelCopyWith(
          PokemonModel value, $Res Function(PokemonModel) then) =
      _$PokemonModelCopyWithImpl<$Res, PokemonModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      int? height,
      int? weight,
      PokemonSpritesModel sprites,
      PokemonCriesModel cries,
      List<PokemonTypeModel> types});

  $PokemonSpritesModelCopyWith<$Res> get sprites;
  $PokemonCriesModelCopyWith<$Res> get cries;
}

/// @nodoc
class _$PokemonModelCopyWithImpl<$Res, $Val extends PokemonModel>
    implements $PokemonModelCopyWith<$Res> {
  _$PokemonModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? height = freezed,
    Object? weight = freezed,
    Object? sprites = null,
    Object? cries = null,
    Object? types = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      sprites: null == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as PokemonSpritesModel,
      cries: null == cries
          ? _value.cries
          : cries // ignore: cast_nullable_to_non_nullable
              as PokemonCriesModel,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonTypeModel>,
    ) as $Val);
  }

  /// Create a copy of PokemonModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PokemonSpritesModelCopyWith<$Res> get sprites {
    return $PokemonSpritesModelCopyWith<$Res>(_value.sprites, (value) {
      return _then(_value.copyWith(sprites: value) as $Val);
    });
  }

  /// Create a copy of PokemonModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PokemonCriesModelCopyWith<$Res> get cries {
    return $PokemonCriesModelCopyWith<$Res>(_value.cries, (value) {
      return _then(_value.copyWith(cries: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonModelImplCopyWith<$Res>
    implements $PokemonModelCopyWith<$Res> {
  factory _$$PokemonModelImplCopyWith(
          _$PokemonModelImpl value, $Res Function(_$PokemonModelImpl) then) =
      __$$PokemonModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int? height,
      int? weight,
      PokemonSpritesModel sprites,
      PokemonCriesModel cries,
      List<PokemonTypeModel> types});

  @override
  $PokemonSpritesModelCopyWith<$Res> get sprites;
  @override
  $PokemonCriesModelCopyWith<$Res> get cries;
}

/// @nodoc
class __$$PokemonModelImplCopyWithImpl<$Res>
    extends _$PokemonModelCopyWithImpl<$Res, _$PokemonModelImpl>
    implements _$$PokemonModelImplCopyWith<$Res> {
  __$$PokemonModelImplCopyWithImpl(
      _$PokemonModelImpl _value, $Res Function(_$PokemonModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? height = freezed,
    Object? weight = freezed,
    Object? sprites = null,
    Object? cries = null,
    Object? types = null,
  }) {
    return _then(_$PokemonModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      sprites: null == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as PokemonSpritesModel,
      cries: null == cries
          ? _value.cries
          : cries // ignore: cast_nullable_to_non_nullable
              as PokemonCriesModel,
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonTypeModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonModelImpl with DiagnosticableTreeMixin implements _PokemonModel {
  const _$PokemonModelImpl(
      {required this.id,
      required this.name,
      required this.height,
      required this.weight,
      required this.sprites,
      required this.cries,
      required final List<PokemonTypeModel> types})
      : _types = types;

  factory _$PokemonModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int? height;
  @override
  final int? weight;
  @override
  final PokemonSpritesModel sprites;
  @override
  final PokemonCriesModel cries;
  final List<PokemonTypeModel> _types;
  @override
  List<PokemonTypeModel> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PokemonModel(id: $id, name: $name, height: $height, weight: $weight, sprites: $sprites, cries: $cries, types: $types)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PokemonModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('height', height))
      ..add(DiagnosticsProperty('weight', weight))
      ..add(DiagnosticsProperty('sprites', sprites))
      ..add(DiagnosticsProperty('cries', cries))
      ..add(DiagnosticsProperty('types', types));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.sprites, sprites) || other.sprites == sprites) &&
            (identical(other.cries, cries) || other.cries == cries) &&
            const DeepCollectionEquality().equals(other._types, _types));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, height, weight,
      sprites, cries, const DeepCollectionEquality().hash(_types));

  /// Create a copy of PokemonModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonModelImplCopyWith<_$PokemonModelImpl> get copyWith =>
      __$$PokemonModelImplCopyWithImpl<_$PokemonModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonModelImplToJson(
      this,
    );
  }
}

abstract class _PokemonModel implements PokemonModel {
  const factory _PokemonModel(
      {required final int id,
      required final String name,
      required final int? height,
      required final int? weight,
      required final PokemonSpritesModel sprites,
      required final PokemonCriesModel cries,
      required final List<PokemonTypeModel> types}) = _$PokemonModelImpl;

  factory _PokemonModel.fromJson(Map<String, dynamic> json) =
      _$PokemonModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int? get height;
  @override
  int? get weight;
  @override
  PokemonSpritesModel get sprites;
  @override
  PokemonCriesModel get cries;
  @override
  List<PokemonTypeModel> get types;

  /// Create a copy of PokemonModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonModelImplCopyWith<_$PokemonModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
