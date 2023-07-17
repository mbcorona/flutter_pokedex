import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:pokeapi/pokeapi.dart';

part 'pokedex_state.dart';

class PokedexBloc extends StateNotifier<PokedexState> {
  PokedexBloc({PokeApi? api})
      : _api = api ?? PokeApiImpl(),
        super(PokedexState());

  final PokeApi _api;
  int page = 0;

  Future<void> load() async {
    final pokelist = await _api.getAll(page: page);
    state = PokedexState(pokelist: pokelist);
  }

  Future<void> loadMore() async {
    final hasMore = state.pokelist.next != null;
    if (hasMore) {
      page++;
      final pokelist = await _api.getAll(page: page);

      state = PokedexState(pokelist: pokelist.copyWith(results: [...state.pokelist.results, ...pokelist.results]));
    }
  }
}
