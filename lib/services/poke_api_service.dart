import 'package:dio/dio.dart';

class PokeApiService {
  final Dio dio = Dio(BaseOptions(baseUrl: 'https://pokeapi.co/api/v2'));
}
