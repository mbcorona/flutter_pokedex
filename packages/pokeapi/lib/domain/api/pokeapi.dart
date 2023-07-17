import 'package:pokeapi/domain/models/models.dart';

abstract class PokeApi {
  Future<PokeList<Pokemon>> getAll({int page = 0});
  Future<PokemonDetails> getDetails(String id);
}
