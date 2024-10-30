import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokemon_app_flutter_web/infrastracture/model/pokemon_model.dart';
import 'package:pokemon_app_flutter_web/provider/pokemons_provider.dart';

class MyWidget extends HookConsumerWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    late final List<PokemonModel> pokemons;

    final pokemonsAsyncValue = ref.watch(pokemonModelsProvider);

    return Material(
      child: Center(
        child: switch (pokemonsAsyncValue) {
          AsyncLoading() => const Center(child: CircularProgressIndicator()),
          AsyncError() => const Text('Oops, something unexpected happened'),
          AsyncData(:final value) => _PokemonListView(pokemonModels: value),
          _ => const CircularProgressIndicator(),
        },
      ),
    );
  }
}

class _PokemonListView extends StatelessWidget {
  final List<PokemonModel> pokemonModels;
  const _PokemonListView({
    super.key,
    required this.pokemonModels,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: pokemonModels.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: SizedBox(
              height: 50,
              width: 50,
              child: CachedNetworkImage(imageUrl: pokemonModels[index].sprites.front_default),
            ),
            title: Text(pokemonModels[index].name),
          );
        },
      ),
    );
  }
}
