import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon.g.dart';
part 'pokemon.freezed.dart';

@freezed
class Pokemon with _$Pokemon {
  const factory Pokemon({
    required String name,
    required String url,
  }) = _Pokemon;

  factory Pokemon.fromJson(Map<String, Object?> json) => _$PokemonFromJson(json);
}

extension PokemonX on Pokemon {
  String get id => url.split('/').reversed.elementAt(1);
  String get image => 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/$id.png';
}

@freezed
class PokemonDetails with _$PokemonDetails {
  const factory PokemonDetails({
    required int id,
    required String name,
    required double height,
    required double weight,
  }) = _PokemonDetails;

  factory PokemonDetails.fromJson(Map<String, Object?> json) => _$PokemonDetailsFromJson(json);
}

extension PokemonDetailsX on PokemonDetails {
  String get image => 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/$id.png';
}
