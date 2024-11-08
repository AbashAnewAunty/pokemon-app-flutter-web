import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokemon_app_flutter_web/infrastracture/model/pokemon_model.dart';
import 'package:pokemon_app_flutter_web/provider/pokemons_provider.dart';
import 'package:pokemon_app_flutter_web/ui/pages/detail_page.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemonsAsyncValue = ref.watch(pokemonModelsProvider);

    return Material(
      color: const Color.fromARGB(255, 227, 49, 40),
      child: Center(
        child: switch (pokemonsAsyncValue) {
          AsyncLoading() => const Center(child: CircularProgressIndicator(color: Colors.white)),
          AsyncError() => const Text('Oops, something unexpected happened'),
          AsyncData(:final value) => _PokemonListView(pokemonModels: value),
          _ => const CircularProgressIndicator(color: Colors.white),
        },
      ),
    );
  }
}

class _PokemonListView extends StatelessWidget {
  final List<PokemonModel> pokemonModels;
  const _PokemonListView({
    required this.pokemonModels,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 350),
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 20,
          ),
          itemCount: pokemonModels.length,
          itemBuilder: (context, index) {
            return Container(
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return DetailPage(pokemonModel: pokemonModels[index]);
                  }));
                },
                child: ListTile(
                  leading: Hero(
                    tag: pokemonModels[index].name,
                    child: SizedBox(
                      height: 50,
                      width: 50,
                      child: CachedNetworkImage(imageUrl: pokemonModels[index].sprites.front_default),
                    ),
                  ),
                  title: Text(
                    "No.${pokemonModels[index].id} ${pokemonModels[index].name}",
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
