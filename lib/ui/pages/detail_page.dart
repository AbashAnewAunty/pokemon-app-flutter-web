import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pokemon_app_flutter_web/infrastracture/model/pokemon_model.dart';

class DetailPage extends StatelessWidget {
  final PokemonModel pokemonModel;
  const DetailPage({super.key, required this.pokemonModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Hero(
              tag: pokemonModel.name,
              child: SizedBox(
                height: 100,
                width: 100,
                child: CachedNetworkImage(
                  imageUrl: pokemonModel.sprites.front_default,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text("No.${pokemonModel.id} ${pokemonModel.name}"),
            const SizedBox(height: 10),
            Text("height: ${pokemonModel.height}  weight: ${pokemonModel.weight}")
          ],
        ),
      ),
    );
  }
}
