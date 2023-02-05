import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:pokedex/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex/models/pokemon_details/sprites/sprites.dart';
import 'package:pokedex/services/poke_api_service.dart';

import 'clefairy.dart';

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

  group('pokeApiService', () {
    test('Test getPokemonByName function with clefairy json, should succeed',
        () async {
      PokeApiService pokeApiService = PokeApiService(dio);
      PokemonDetails pokemonDetails =
          await pokeApiService.getPokemonByName("clefairy");
      expect(pokemonDetails, clefairyPokemon);
    });
  });
}

Future<Map<String, dynamic>> buildJson() async {
  final file = File('test/service/poke_api_service_test/clefairy.json');
  final json = jsonDecode(await file.readAsString());
  return json;
}
