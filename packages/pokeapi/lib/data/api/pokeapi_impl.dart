import 'package:dio/dio.dart';
import 'package:pokeapi/domain/domain.dart';

class PokeApiImpl implements PokeApi {
  final Dio _dio;

  PokeApiImpl({Dio? dio}) : _dio = dio ?? Dio();
  static const String baseUrl = 'https://pokeapi.co/api/v2';
  static const size = 20;

  @override
  Future<PokeList<Pokemon>> getAll({int page = 0}) async {
    final path = '/pokemon';
    try {
      final response = await _dio.get('$baseUrl$path?limit=$size&offset=${size * page}');
      if (response.statusCode == 200) {
        final pokelist = PokeList<Pokemon>.fromJson(
          response.data,
          (p0) => Pokemon.fromJson(p0 as Map<String, dynamic>),
        );
        return pokelist;
      } else {
        throw Exception('Failed to fetch Pokémon');
      }
    } catch (e) {
      throw Exception('Failed to fetch Pokémon: $e');
    }
  }

  @override
  Future<PokemonDetails> getDetails(String id) async {
    final path = '/pokemon/$id/';
    try {
      final response = await _dio.get('$baseUrl$path');
      if (response.statusCode == 200) {
        final details = PokemonDetails.fromJson(response.data);
        return details;
      } else {
        throw Exception('Failed to fetch Pokémon');
      }
    } catch (e) {
      throw Exception('Failed to fetch Pokémon: $e');
    }
  }
}
