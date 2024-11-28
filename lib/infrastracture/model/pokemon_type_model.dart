// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pokemon_app_flutter_web/infrastracture/model/pokemon_sprites_model.dart';

// required: associates our `main.dart` with the code generated by Freezed
part 'pokemon_type_model.freezed.dart';
// optional: Since our Person class is serializable, we must add this line.
// But if Person was not serializable, we could skip it.
part 'pokemon_type_model.g.dart';

@freezed
class PokemonTypeModel with _$PokemonTypeModel {
  const factory PokemonTypeModel({
    required int slot,
    required Map<String, dynamic> type,
  }) = _PokemonTypeModel;

  factory PokemonTypeModel.fromJson(Map<String, Object?> json) => _$PokemonTypeModelFromJson(json);
}