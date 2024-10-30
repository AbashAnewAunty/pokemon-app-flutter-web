// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pokemon_app_flutter_web/infrastracture/model/pokemon_url_model.dart';

// required: associates our `main.dart` with the code generated by Freezed
part 'pokemon_url_list_model.freezed.dart';
// optional: Since our Person class is serializable, we must add this line.
// But if Person was not serializable, we could skip it.
part 'pokemon_url_list_model.g.dart';

@freezed
class PokemonUrlListModel with _$PokemonUrlListModel {
  const factory PokemonUrlListModel({
    required int count,
    String? next,
    String? previous,
    required List<PokemonUrlModel> results,
  }) = _PokemonUrlListModel;

  factory PokemonUrlListModel.fromJson(Map<String, Object?> json) => _$PokemonUrlListModelFromJson(json);
}