// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_sprites_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonSpritesModelImpl _$$PokemonSpritesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonSpritesModelImpl(
      front_default: json['front_default'] as String,
      front_shiny: json['front_shiny'] as String?,
      back_default: json['back_default'] as String?,
      back_shiny: json['back_shiny'] as String?,
    );

Map<String, dynamic> _$$PokemonSpritesModelImplToJson(
        _$PokemonSpritesModelImpl instance) =>
    <String, dynamic>{
      'front_default': instance.front_default,
      'front_shiny': instance.front_shiny,
      'back_default': instance.back_default,
      'back_shiny': instance.back_shiny,
    };

_$PokemonCriesModelImpl _$$PokemonCriesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonCriesModelImpl(
      latest: json['latest'] as String?,
      legacy: json['legacy'] as String?,
    );

Map<String, dynamic> _$$PokemonCriesModelImplToJson(
        _$PokemonCriesModelImpl instance) =>
    <String, dynamic>{
      'latest': instance.latest,
      'legacy': instance.legacy,
    };
