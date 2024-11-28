// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonTypeModel _$PokemonTypeModelFromJson(Map<String, dynamic> json) {
  return _PokemonTypeModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonTypeModel {
  int get slot => throw _privateConstructorUsedError;
  Map<String, dynamic> get type => throw _privateConstructorUsedError;

  /// Serializes this PokemonTypeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonTypeModelCopyWith<PokemonTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonTypeModelCopyWith<$Res> {
  factory $PokemonTypeModelCopyWith(
          PokemonTypeModel value, $Res Function(PokemonTypeModel) then) =
      _$PokemonTypeModelCopyWithImpl<$Res, PokemonTypeModel>;
  @useResult
  $Res call({int slot, Map<String, dynamic> type});
}

/// @nodoc
class _$PokemonTypeModelCopyWithImpl<$Res, $Val extends PokemonTypeModel>
    implements $PokemonTypeModelCopyWith<$Res> {
  _$PokemonTypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonTypeModelImplCopyWith<$Res>
    implements $PokemonTypeModelCopyWith<$Res> {
  factory _$$PokemonTypeModelImplCopyWith(_$PokemonTypeModelImpl value,
          $Res Function(_$PokemonTypeModelImpl) then) =
      __$$PokemonTypeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int slot, Map<String, dynamic> type});
}

/// @nodoc
class __$$PokemonTypeModelImplCopyWithImpl<$Res>
    extends _$PokemonTypeModelCopyWithImpl<$Res, _$PokemonTypeModelImpl>
    implements _$$PokemonTypeModelImplCopyWith<$Res> {
  __$$PokemonTypeModelImplCopyWithImpl(_$PokemonTypeModelImpl _value,
      $Res Function(_$PokemonTypeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? type = null,
  }) {
    return _then(_$PokemonTypeModelImpl(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value._type
          : type // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonTypeModelImpl
    with DiagnosticableTreeMixin
    implements _PokemonTypeModel {
  const _$PokemonTypeModelImpl(
      {required this.slot, required final Map<String, dynamic> type})
      : _type = type;

  factory _$PokemonTypeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonTypeModelImplFromJson(json);

  @override
  final int slot;
  final Map<String, dynamic> _type;
  @override
  Map<String, dynamic> get type {
    if (_type is EqualUnmodifiableMapView) return _type;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_type);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PokemonTypeModel(slot: $slot, type: $type)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PokemonTypeModel'))
      ..add(DiagnosticsProperty('slot', slot))
      ..add(DiagnosticsProperty('type', type));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonTypeModelImpl &&
            (identical(other.slot, slot) || other.slot == slot) &&
            const DeepCollectionEquality().equals(other._type, _type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, slot, const DeepCollectionEquality().hash(_type));

  /// Create a copy of PokemonTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonTypeModelImplCopyWith<_$PokemonTypeModelImpl> get copyWith =>
      __$$PokemonTypeModelImplCopyWithImpl<_$PokemonTypeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonTypeModelImplToJson(
      this,
    );
  }
}

abstract class _PokemonTypeModel implements PokemonTypeModel {
  const factory _PokemonTypeModel(
      {required final int slot,
      required final Map<String, dynamic> type}) = _$PokemonTypeModelImpl;

  factory _PokemonTypeModel.fromJson(Map<String, dynamic> json) =
      _$PokemonTypeModelImpl.fromJson;

  @override
  int get slot;
  @override
  Map<String, dynamic> get type;

  /// Create a copy of PokemonTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonTypeModelImplCopyWith<_$PokemonTypeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
