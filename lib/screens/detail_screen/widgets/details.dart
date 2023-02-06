import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex/screens/detail_screen/widgets/details/general.dart';
import 'package:pokedex/screens/detail_screen/widgets/details/moves.dart';
import 'package:pokedex/screens/detail_screen/widgets/details/stats.dart';
import 'package:pokedex/utils/colors.dart';
import 'package:pokedex/utils/padding.dart';

class Details extends StatelessWidget {
  final PokemonDetails pokemonDetails;
  const Details({super.key, required this.pokemonDetails});

  @override
  Widget build(BuildContext context) {
    Color color =
        PokemonColors.pokemonTypeColors[pokemonDetails.types!.first.type.name]!;
    return Positioned(
      height: MediaQuery.of(context).size.height / 1.9,
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(
              18,
            ),
          ),
        ),
        padding: EdgeInsets.only(
            left: UIPadding.m, right: UIPadding.m, top: UIPadding.m),
        child: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              TabBar(
                indicatorColor: color,
                tabs: const [
                  Tab(
                    text: 'General',
                  ),
                  Tab(
                    text: 'Moves',
                  ),
                  Tab(
                    text: 'Stats',
                  ),
                ],
              ),
              Flexible(
                child: TabBarView(
                  children: [
                    General(pokemonDetails: pokemonDetails),
                    Moves(pokemonDetails: pokemonDetails),
                    Stats(pokemonDetails: pokemonDetails)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


// TabBarView(
//               children: [
//                 Icon(Icons.directions_car),
//                 Icon(Icons.directions_transit),
//                 Icon(Icons.directions_bike),
//               ],
//             )