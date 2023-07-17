import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:pokeapi/pokeapi.dart';

part 'pokemon_state.dart';

class PokemonBloc extends StateNotifier<PokemonState> {
  PokemonBloc({PokeApi? api})
      : _api = api ?? PokeApiImpl(),
        super(PokemonState());

  final PokeApi _api;
  int page = 0;

  Future<void> load(String id) async {
    state = PokemonState();
    final details = await _api.getDetails(id);
    state = PokemonState(details: details);
  }
}
