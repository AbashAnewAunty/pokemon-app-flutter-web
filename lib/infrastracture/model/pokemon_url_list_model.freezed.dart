// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_url_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonUrlListModel _$PokemonUrlListModelFromJson(Map<String, dynamic> json) {
  return _PokemonUrlListModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonUrlListModel {
  int get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  List<PokemonUrlModel> get results => throw _privateConstructorUsedError;

  /// Serializes this PokemonUrlListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonUrlListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonUrlListModelCopyWith<PokemonUrlListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonUrlListModelCopyWith<$Res> {
  factory $PokemonUrlListModelCopyWith(
          PokemonUrlListModel value, $Res Function(PokemonUrlListModel) then) =
      _$PokemonUrlListModelCopyWithImpl<$Res, PokemonUrlListModel>;
  @useResult
  $Res call(
      {int count,
      String? next,
      String? previous,
      List<PokemonUrlModel> results});
}

/// @nodoc
class _$PokemonUrlListModelCopyWithImpl<$Res, $Val extends PokemonUrlListModel>
    implements $PokemonUrlListModelCopyWith<$Res> {
  _$PokemonUrlListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonUrlListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PokemonUrlModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonUrlListModelImplCopyWith<$Res>
    implements $PokemonUrlListModelCopyWith<$Res> {
  factory _$$PokemonUrlListModelImplCopyWith(_$PokemonUrlListModelImpl value,
          $Res Function(_$PokemonUrlListModelImpl) then) =
      __$$PokemonUrlListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int count,
      String? next,
      String? previous,
      List<PokemonUrlModel> results});
}

/// @nodoc
class __$$PokemonUrlListModelImplCopyWithImpl<$Res>
    extends _$PokemonUrlListModelCopyWithImpl<$Res, _$PokemonUrlListModelImpl>
    implements _$$PokemonUrlListModelImplCopyWith<$Res> {
  __$$PokemonUrlListModelImplCopyWithImpl(_$PokemonUrlListModelImpl _value,
      $Res Function(_$PokemonUrlListModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonUrlListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_$PokemonUrlListModelImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PokemonUrlModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonUrlListModelImpl
    with DiagnosticableTreeMixin
    implements _PokemonUrlListModel {
  const _$PokemonUrlListModelImpl(
      {required this.count,
      this.next,
      this.previous,
      required final List<PokemonUrlModel> results})
      : _results = results;

  factory _$PokemonUrlListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonUrlListModelImplFromJson(json);

  @override
  final int count;
  @override
  final String? next;
  @override
  final String? previous;
  final List<PokemonUrlModel> _results;
  @override
  List<PokemonUrlModel> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PokemonUrlListModel(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PokemonUrlListModel'))
      ..add(DiagnosticsProperty('count', count))
      ..add(DiagnosticsProperty('next', next))
      ..add(DiagnosticsProperty('previous', previous))
      ..add(DiagnosticsProperty('results', results));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonUrlListModelImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, count, next, previous,
      const DeepCollectionEquality().hash(_results));

  /// Create a copy of PokemonUrlListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonUrlListModelImplCopyWith<_$PokemonUrlListModelImpl> get copyWith =>
      __$$PokemonUrlListModelImplCopyWithImpl<_$PokemonUrlListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonUrlListModelImplToJson(
      this,
    );
  }
}

abstract class _PokemonUrlListModel implements PokemonUrlListModel {
  const factory _PokemonUrlListModel(
          {required final int count,
          final String? next,
          final String? previous,
          required final List<PokemonUrlModel> results}) =
      _$PokemonUrlListModelImpl;

  factory _PokemonUrlListModel.fromJson(Map<String, dynamic> json) =
      _$PokemonUrlListModelImpl.fromJson;

  @override
  int get count;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  List<PokemonUrlModel> get results;

  /// Create a copy of PokemonUrlListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonUrlListModelImplCopyWith<_$PokemonUrlListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}