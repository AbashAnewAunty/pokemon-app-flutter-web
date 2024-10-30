import 'package:dio/dio.dart';
import 'package:pokemon_app_flutter_web/infrastracture/model/pokemon_url_list_model.dart';
import 'package:pokemon_app_flutter_web/infrastracture/model/pokemon_url_model.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: 'https://pokeapi.co/api/v2/')
abstract class RestClient {
  factory RestClient(Dio dio, {String? baseUrl}) = _RestClient;

  @GET('/pokemon')
  Future<PokemonUrlListModel> getPokemonUrlList();

  @GET('/pokemon/{idOrName}')
  Future<PokemonUrlModel> getPokemon(@Path('name') String idOrName);
}
