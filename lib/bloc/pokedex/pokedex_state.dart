part of 'pokedex_bloc.dart';

class PokedexState {
  PokedexState({this.pokelist = const PokeList(count: 0)});
  final PokeList<Pokemon> pokelist;
}
