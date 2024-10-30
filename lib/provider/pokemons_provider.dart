import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokemon_app_flutter_web/infrastracture/api/rest_client.dart';
import 'package:pokemon_app_flutter_web/infrastracture/model/pokemon_model.dart';
import 'package:pokemon_app_flutter_web/infrastracture/provider/api_client.dart';
import 'package:pokemon_app_flutter_web/infrastracture/provider/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pokemons_provider.g.dart';

@riverpod
Future<List<PokemonModel>> pokemonModels(Ref ref) async {
  final logger = ref.read(loggerProvider);
  final apiClient = ref.read(apiClientProvider);

  logger.i("start get pokemons");

  final pokemonUrlListModel = await apiClient.getPokemonUrlList();

  logger.i(pokemonUrlListModel);

  final pokemonModels = <PokemonModel>[];
  for (var pokemonUrl in pokemonUrlListModel.results) {
    final pokemonModel = await apiClient.getPokemon(pokemonUrl.name);
    logger.i(pokemonModel);
    pokemonModels.add(pokemonModel);
  }

  logger.i("sucess get pokemons");
  return pokemonModels;
}
