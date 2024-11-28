import 'package:drift/drift.dart';
import 'package:collection/collection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokemon_app_flutter_web/infrastracture/drift/database.dart';
import 'package:pokemon_app_flutter_web/infrastracture/drift/drift_database_provider.dart';
import 'package:pokemon_app_flutter_web/infrastracture/model/pokemon_model.dart';
import 'package:pokemon_app_flutter_web/infrastracture/model/pokemon_sprites_model.dart';
import 'package:pokemon_app_flutter_web/infrastracture/model/pokemon_type_model.dart';
import 'package:pokemon_app_flutter_web/infrastracture/provider/api_client.dart';
import 'package:pokemon_app_flutter_web/infrastracture/provider/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pokemons_provider.g.dart';

@riverpod
Future<List<PokemonModel>> pokemonModels(Ref ref) async {
  final logger = ref.read(loggerProvider);
  final apiClient = ref.read(apiClientProvider);
  final driftDatabase = ref.read(driftDatabaseProvider);

  logger.i("start get pokemons");

  // ローカルDBから取得
  final pokemonDbModels = await driftDatabase.select(driftDatabase.pokemons).get();

  logger.i("saved pokemons count in indexedDB: ${pokemonDbModels.length}");

  // サーバーから取得
  final pokemonUrlListModel = await apiClient.getPokemonUrlList();
  final pokemonModels = <PokemonModel>[];
  for (var pokemonUrl in pokemonUrlListModel.results) {
    final pokemonOrNull = pokemonDbModels.firstWhereOrNull((pokemonDbModel) => pokemonDbModel.name == pokemonUrl.name);
    if (pokemonOrNull != null) {
      logger.i("get pokemon ${pokemonUrl.name} from indexedDB");
      pokemonModels.add(
        PokemonModel(
          id: pokemonOrNull.pokemonId,
          name: pokemonOrNull.name,
          height: pokemonOrNull.height,
          weight: pokemonOrNull.weight,
          sprites: PokemonSpritesModel(front_default: pokemonOrNull.frontDefault!),
          cries: PokemonCriesModel(
            latest: pokemonOrNull.latestCry,
            legacy: pokemonOrNull.legacyCry,
          ),
          types: [
            PokemonTypeModel(
              slot: 999,
              type: {"name": pokemonOrNull.type1},
            ),
            if (pokemonOrNull.type2 != null)
              PokemonTypeModel(
                slot: 999,
                type: {"name": pokemonOrNull.type2},
              )
          ],
        ),
      );
    } else {
      logger.i("get pokemon ${pokemonUrl.name} from server");
      final fetchedPokemon = await apiClient.getPokemon(pokemonUrl.name);
      await driftDatabase.into(driftDatabase.pokemons).insert(
            PokemonsCompanion.insert(
              pokemonId: fetchedPokemon.id,
              name: fetchedPokemon.name,
              height: Value(fetchedPokemon.height),
              weight: Value(fetchedPokemon.weight),
              frontDefault: Value(fetchedPokemon.sprites.front_default),
              frontShiny: Value(fetchedPokemon.sprites.front_shiny),
              backDefault: Value(fetchedPokemon.sprites.back_default),
              backShiny: Value(fetchedPokemon.sprites.back_shiny),
              latestCry: Value(fetchedPokemon.cries.latest),
              legacyCry: Value(fetchedPokemon.cries.legacy),
              type1: fetchedPokemon.types.first.type["name"],
              // TODO: ここのコメントアウト外すとエラーになるので解消する
              //type2: fetchedPokemon.types.length > 1 ? fetchedPokemon.types[1].type["name"] : null,
            ),
          );
      pokemonModels.add(fetchedPokemon);
    }
  }

  logger.i("sucess get pokemons");
  return pokemonModels;
}
