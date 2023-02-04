import 'package:dio/dio.dart';
import 'package:pokedex/models/pokemon_details/pokemon_details.dart';

class PokeApiService {
  final Dio dio;

  PokeApiService(this.dio) {
    dio.options = BaseOptions(baseUrl: 'https://pokeapi.co/api/v2');
  }

  Future<PokemonDetails> getPokemonByName(String name) async {
    Response response = await dio.get('/pokemon/$name');
    PokemonDetails pokemonDetails = PokemonDetails.fromJson(response.data);
    return pokemonDetails;
  }
}
