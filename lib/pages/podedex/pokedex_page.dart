import 'package:flutter/material.dart';
import 'package:flutter_pokedex/bloc/pokemon/pokemon_bloc.dart';
import 'package:flutter_pokedex/constants.dart';
import 'package:flutter_pokedex/pages/podedex/widgets/pokemon_details_view.dart';
import 'package:pokeapi/domain/models/models.dart';
import 'package:provider/provider.dart';

import 'widgets/pokedex_background.dart';
import 'widgets/pokemons_view.dart';

class PokedexPage extends StatefulWidget {
  const PokedexPage({super.key});

  @override
  State<PokedexPage> createState() => _PokedexPageState();
}

class _PokedexPageState extends State<PokedexPage> {
  bool detailsMode = false;

  void toggleDetailsMode() {
    setState(() {
      detailsMode = !detailsMode;
    });
  }

  void onSelectPokemon(Pokemon pokemon) {
    toggleDetailsMode();
    context.read<PokemonBloc>().load(pokemon.id);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: redColor,
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 900),
              curve: Curves.easeInOutBack,
              top: 0,
              left: detailsMode ? (size.width - padding * 2) * -1 : 0,
              right: 0,
              bottom: 0,
              child: const PokedexBackground(),
            ),
            IgnorePointer(
              ignoring: detailsMode ? false : true,
              child: AnimatedOpacity(
                opacity: detailsMode ? 1 : 0,
                duration: fastDefaultDuration,
                child: PokemonDetailsView(
                  onClose: toggleDetailsMode,
                ),
              ),
            ),
            IgnorePointer(
              ignoring: detailsMode ? true : false,
              child: AnimatedOpacity(
                opacity: detailsMode ? 0 : 1,
                duration: defaultDuration,
                child: PokemonsView(
                  onSelected: onSelectPokemon,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
