import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:just_audio/just_audio.dart';
import 'package:pokemon_app_flutter_web/infrastracture/model/pokemon_model.dart';

class DetailPage extends HookWidget {
  final PokemonModel pokemonModel;
  const DetailPage({super.key, required this.pokemonModel});

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      // 鳴き声再生
      if (pokemonModel.cries.legacy == null) {
        return;
      }

      WidgetsBinding.instance.addPostFrameCallback((_) async {
        final player = AudioPlayer();
        await player.setUrl(pokemonModel.cries.legacy!);
        await player.setVolume(0.1);
        await player.play();
        await player.dispose();
      });
    }, []);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Pokemon Detail"),
      ),
      backgroundColor: const Color.fromARGB(255, 227, 49, 40),
      body: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: 10,
                  spreadRadius: 10,
                  offset: Offset(5, 7),
                )
              ],
            ),
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
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
                Text("No.${pokemonModel.id}"),
                Text(
                  pokemonModel.name,
                  style: const TextStyle(
                    fontFamily: "pixelifySans",
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 10),
                const Text("type"),
                const SizedBox(height: 5),
                ...List.generate(pokemonModel.types.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10, bottom: 5),
                    child: Text(pokemonModel.types[index].type["name"]),
                  );
                }),
                const SizedBox(height: 10),
                Text("height: ${pokemonModel.height} weight: ${pokemonModel.weight}"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
