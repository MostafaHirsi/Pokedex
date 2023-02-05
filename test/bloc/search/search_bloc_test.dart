import 'dart:convert';
import 'dart:io';

import 'package:bloc_test/bloc_test.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:mockito/annotations.dart';
import 'package:pokedex/blocs/search/search_bloc.dart';
import 'package:pokedex/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex/services/poke_api_service.dart';

import '../../service/poke_api_service_test/clefairy.dart';

@GenerateMocks([PokeApiService])
void main() {
  final Dio dio = Dio();
  final DioAdapter dioAdapter = DioAdapter(
    dio: dio,
    matcher: const FullHttpRequestMatcher(),
  );

  dioAdapter.onGet(
    '/pokemon/clefairy',
    (server) async => server.reply(
      200,
      await buildJson(),
      delay: const Duration(seconds: 1),
    ),
  );

  dioAdapter.onGet(
    '/pokemon/squirrel',
    (server) async => server.reply(
      404,
      "Not Found",
      delay: const Duration(seconds: 1),
    ),
  );
  PokeApiService pokeApiService = PokeApiService(dio);

  group('searchBloc', () {
    blocTest<SearchBloc, SearchState>(
      'Empty State',
      build: () => SearchBloc(pokeApiService),
      expect: () => [],
    );
    blocTest<SearchBloc, SearchState>(
      'Add CommitSearchEvent to searchBloc with clefairy as search term, expect SearchComplete with one PokemonDetails object',
      build: () => SearchBloc(pokeApiService),
      act: (bloc) => bloc.add(
        CommitSearchEvent("clefairy"),
      ),
      wait: Duration(
        seconds: 3,
      ),
      expect: () => [SearchLoading(), SearchComplete(clefairyPokemon)],
    );
    blocTest<SearchBloc, SearchState>(
      'Add CommitSearchEvent to searchBloc with squirrel as search term, expect SearchComplete a null value for pokemonDetails',
      build: () => SearchBloc(pokeApiService),
      act: (bloc) => bloc.add(
        CommitSearchEvent("squirrel"),
      ),
      wait: Duration(
        seconds: 3,
      ),
      expect: () => [SearchLoading(), SearchComplete()],
    );
  });
}

Future<Map<String, dynamic>> buildJson() async {
  final file = File('test/service/poke_api_service_test/clefairy.json');
  final json = jsonDecode(await file.readAsString());
  return json;
}
