import 'package:flutter/material.dart';
import 'package:flutter_pokedex/bloc/pokedex/pokedex_bloc.dart';
import 'package:flutter_pokedex/constants.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:pokeapi/domain/domain.dart';
import 'package:provider/provider.dart';

class PokemonsView extends StatelessWidget {
  const PokemonsView({
    super.key,
    required this.onSelected,
  });

  final ValueChanged<Pokemon> onSelected;

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<PokedexBloc, PokedexState>(
      create: (_) => PokedexBloc()..load(),
      child: Builder(builder: (context) {
        return SafeArea(
          bottom: false,
          child: StateNotifierBuilder<PokedexState>(
            stateNotifier: context.read<PokedexBloc>(),
            builder: (context, value, child) {
              return Padding(
                padding: const EdgeInsets.only(left: padding / 4, right: padding * 2.2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: padding / 4),
                      child: Text(
                        'POKEDEX',
                        style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Expanded(
                      child: GridView.builder(
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                        itemCount: value.pokelist.results.length + (value.pokelist.next != null ? 1 : 0),
                        itemBuilder: (context, index) {
                          if (index == value.pokelist.results.length) {
                            context.read<PokedexBloc>().loadMore();
                            return const Center(
                              child: CircularProgressIndicator(
                                color: Colors.white,
                              ),
                            );
                          }
                          final pokemon = value.pokelist.results.elementAt(index);
                          return Card(
                            color: Colors.white.withOpacity(.8),
                            child: InkWell(
                              onTap: () => onSelected.call(pokemon),
                              borderRadius: BorderRadius.circular(10),
                              splashColor: Colors.white,
                              child: Column(
                                children: [
                                  Image.network(
                                    pokemon.image,
                                    height: 100,
                                  ),
                                  Text(
                                    pokemon.name.toUpperCase(),
                                    style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        );
      }),
    );
  }
}
