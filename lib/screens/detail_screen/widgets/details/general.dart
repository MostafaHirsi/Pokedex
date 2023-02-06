import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:pokedex/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex/utils/padding.dart';
import 'package:pokedex/utils/string.dart';

class General extends StatelessWidget {
  final PokemonDetails pokemonDetails;
  const General({super.key, required this.pokemonDetails});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: UIPadding.m),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildRow(context, "Species", pokemonDetails.types!.first.type.name),
          buildRow(context, "Height", "${pokemonDetails.height} m"),
          buildRow(context, "Weight", "${pokemonDetails.weight} lbs"),
          buildRow(context, "Base Experience",
              "${pokemonDetails.baseExperience} pts"),
        ],
      ),
    );
  }

  Widget buildRow(BuildContext context, String label, dynamic value) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: UIPadding.xs),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 10,
            child: Text(
              "$label: ",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: Colors.grey),
            ),
          ),
          Spacer(
            flex: 10,
          ),
          Expanded(
            flex: 10,
            child: Text(
              value.toString().capitalize(),
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }
}
