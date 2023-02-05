import 'package:dio/dio.dart';
import 'package:pokedex/models/pokemon_details/pokemon_details.dart';

class PokeApiService {
  final Dio dio;

  PokeApiService(this.dio) {
    dio.options = BaseOptions(
      baseUrl: 'https://pokeapi.co/api/v2',
      validateStatus: (status) {
        return status == 200 || status == 404;
      },
    );
  }

  Future<PokemonDetails?> getPokemonByName(String name) async {
    Response response = await dio.get('/pokemon/$name');
    if (response.statusCode == 404) {
      return null;
    }

    PokemonDetails pokemonDetails = PokemonDetails.fromJson(response.data);
    return pokemonDetails;
  }
}
