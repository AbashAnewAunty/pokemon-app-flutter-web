// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonTypeModelImpl _$$PokemonTypeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonTypeModelImpl(
      slot: (json['slot'] as num).toInt(),
      type: json['type'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$PokemonTypeModelImplToJson(
        _$PokemonTypeModelImpl instance) =>
    <String, dynamic>{
      'slot': instance.slot,
      'type': instance.type,
    };
