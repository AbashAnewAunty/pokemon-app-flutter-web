// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_url_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonUrlListModelImpl _$$PokemonUrlListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonUrlListModelImpl(
      count: (json['count'] as num).toInt(),
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>)
          .map((e) => PokemonUrlModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PokemonUrlListModelImplToJson(
        _$PokemonUrlListModelImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };
