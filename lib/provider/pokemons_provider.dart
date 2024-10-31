import 'package:drift/drift.dart';
import 'package:collection/collection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokemon_app_flutter_web/infrastracture/api/rest_client.dart';
import 'package:pokemon_app_flutter_web/infrastracture/drift/database.dart';
import 'package:pokemon_app_flutter_web/infrastracture/drift/drift_database_provider.dart';
import 'package:pokemon_app_flutter_web/infrastracture/model/pokemon_model.dart';
import 'package:pokemon_app_flutter_web/infrastracture/model/pokemon_sprites_model.dart';
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
  final pokemonDbSpriteModels = await driftDatabase.select(driftDatabase.pokemonSprites).get();

  logger.i("saved pokemons count in indexedDB: ${pokemonDbModels.length}");

  // サーバーから取得
  final pokemonUrlListModel = await apiClient.getPokemonUrlList();
  final pokemonModels = <PokemonModel>[];
  for (var pokemonUrl in pokemonUrlListModel.results) {
    final pokemonOrNull = pokemonDbModels.firstWhereOrNull((pokemonDbModel) => pokemonDbModel.name == pokemonUrl.name);
    if (pokemonOrNull != null) {
      logger.i("get pokemon ${pokemonUrl.name} from indexedDB");
      final pokemonSprites =
          pokemonDbSpriteModels.firstWhere((pokemonDbSprites) => pokemonDbSprites.pokemonId == pokemonOrNull.pokemonId);
      pokemonModels.add(
        PokemonModel(
          id: pokemonOrNull.pokemonId,
          name: pokemonOrNull.name,
          height: pokemonOrNull.height,
          weight: pokemonOrNull.weight,
          sprites: PokemonSpritesModel(front_default: pokemonSprites.frontDefault!),
        ),
      );
    } else {
      logger.i("get pokemon ${pokemonUrl.name} from server");
      final pokemonModel = await apiClient.getPokemon(pokemonUrl.name);

      final a = await driftDatabase.into(driftDatabase.pokemons).insert(
            PokemonsCompanion.insert(
              pokemonId: pokemonModel.id,
              name: pokemonModel.name,
              height: Value(pokemonModel.height),
              weight: Value(pokemonModel.weight),
            ),
          );
      final b = await driftDatabase.into(driftDatabase.pokemonSprites).insert(
            PokemonSpritesCompanion.insert(
              pokemonId: pokemonModel.id,
              frontDefault: Value(pokemonModel.sprites.front_default),
            ),
          );
      final c = await driftDatabase.select(driftDatabase.pokemons).get();
      final d = await driftDatabase.select(driftDatabase.pokemonSprites).get();
      pokemonModels.add(pokemonModel);
    }
  }

  logger.i("sucess get pokemons");
  return pokemonModels;
}
