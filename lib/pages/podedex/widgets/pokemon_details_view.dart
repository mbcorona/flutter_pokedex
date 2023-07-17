import 'package:flutter/material.dart';
import 'package:flutter_pokedex/bloc/pokemon/pokemon_bloc.dart';
import 'package:flutter_pokedex/constants.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:pokeapi/domain/models/models.dart';
import 'package:provider/provider.dart';

class PokemonDetailsView extends StatelessWidget {
  const PokemonDetailsView({super.key, required this.onClose});

  final VoidCallback onClose;

  @override
  Widget build(BuildContext context) {
    return StateNotifierBuilder(
      stateNotifier: context.read<PokemonBloc>(),
      builder: (context, state, _) {
        if (state.details == null) {
          return const CircularProgressIndicator(color: redColor);
        }
        return SafeArea(
          child: TweenAnimationBuilder<double>(
            duration: fastDefaultDuration,
            tween: Tween(begin: 40, end: 0),
            curve: Curves.decelerate,
            builder: (context, value, _) {
              return Transform.translate(
                offset: Offset(value, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: padding * 1.5),
                      child: BackButton(
                        color: Colors.black,
                        onPressed: onClose,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: padding / 4, left: padding * 2.2),
                      child: Column(
                        children: [
                          Image.network(
                            state.details!.image,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: padding / 2),
                            child: Text(
                              state.details!.name.toUpperCase(),
                              style: const TextStyle(fontSize: 27, fontWeight: FontWeight.w700),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    state.details!.id.toString(),
                                    style: const TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
                                  ),
                                  const Text(
                                    'N',
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    state.details!.height.toString(),
                                    style: const TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
                                  ),
                                  const Text(
                                    'Height',
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    state.details!.weight.toString(),
                                    style: const TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
                                  ),
                                  const Text(
                                    'Weight',
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
