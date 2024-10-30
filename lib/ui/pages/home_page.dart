import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokemon_app_flutter_web/infrastracture/model/pokemon_model.dart';
import 'package:pokemon_app_flutter_web/infrastracture/provider/api_client.dart';
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
            title: Text(pokemonModels[index].name),
          );
        },
      ),
    );
  }
}
