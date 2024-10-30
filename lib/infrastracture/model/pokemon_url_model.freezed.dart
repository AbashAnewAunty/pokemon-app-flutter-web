// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_url_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonUrlModel _$PokemonUrlModelFromJson(Map<String, dynamic> json) {
  return _PokemonUrlModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonUrlModel {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this PokemonUrlModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonUrlModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonUrlModelCopyWith<PokemonUrlModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonUrlModelCopyWith<$Res> {
  factory $PokemonUrlModelCopyWith(
          PokemonUrlModel value, $Res Function(PokemonUrlModel) then) =
      _$PokemonUrlModelCopyWithImpl<$Res, PokemonUrlModel>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$PokemonUrlModelCopyWithImpl<$Res, $Val extends PokemonUrlModel>
    implements $PokemonUrlModelCopyWith<$Res> {
  _$PokemonUrlModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonUrlModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonUrlModelImplCopyWith<$Res>
    implements $PokemonUrlModelCopyWith<$Res> {
  factory _$$PokemonUrlModelImplCopyWith(_$PokemonUrlModelImpl value,
          $Res Function(_$PokemonUrlModelImpl) then) =
      __$$PokemonUrlModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$PokemonUrlModelImplCopyWithImpl<$Res>
    extends _$PokemonUrlModelCopyWithImpl<$Res, _$PokemonUrlModelImpl>
    implements _$$PokemonUrlModelImplCopyWith<$Res> {
  __$$PokemonUrlModelImplCopyWithImpl(
      _$PokemonUrlModelImpl _value, $Res Function(_$PokemonUrlModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonUrlModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$PokemonUrlModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonUrlModelImpl
    with DiagnosticableTreeMixin
    implements _PokemonUrlModel {
  const _$PokemonUrlModelImpl({required this.name, required this.url});

  factory _$PokemonUrlModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonUrlModelImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PokemonUrlModel(name: $name, url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PokemonUrlModel'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('url', url));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonUrlModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  /// Create a copy of PokemonUrlModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonUrlModelImplCopyWith<_$PokemonUrlModelImpl> get copyWith =>
      __$$PokemonUrlModelImplCopyWithImpl<_$PokemonUrlModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonUrlModelImplToJson(
      this,
    );
  }
}

abstract class _PokemonUrlModel implements PokemonUrlModel {
  const factory _PokemonUrlModel(
      {required final String name,
      required final String url}) = _$PokemonUrlModelImpl;

  factory _PokemonUrlModel.fromJson(Map<String, dynamic> json) =
      _$PokemonUrlModelImpl.fromJson;

  @override
  String get name;
  @override
  String get url;

  /// Create a copy of PokemonUrlModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonUrlModelImplCopyWith<_$PokemonUrlModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
