import 'package:flutter/material.dart';
import 'package:flutter_pokedex/bloc/pokemon/pokemon_bloc.dart';
import 'package:flutter_pokedex/pages/podedex/pokedex_page.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StateNotifierProvider<PokemonBloc, PokemonState>(
          create: (_) => PokemonBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Pokedex',
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const PokedexPage(),
      ),
    );
  }
}
