import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pokedex/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex/utils/colors.dart';
import 'package:pokedex/utils/padding.dart';
import 'package:pokedex/utils/string.dart';
import 'package:pokedex/widgets/label_tag.dart';

class Overview extends StatelessWidget {
  final PokemonDetails pokemonDetails;
  const Overview({super.key, required this.pokemonDetails});

  @override
  Widget build(BuildContext context) {
    var numberFormat = NumberFormat('###', 'en_US');

    Color color =
        PokemonColors.pokemonTypeColors[pokemonDetails.types!.first.type.name]!;
    String spriteImage =
        pokemonDetails.sprites!.other!.officialArtwork.frontDefault ?? "";
    return Positioned(
      top: 90,
      bottom: MediaQuery.of(context).size.height / 2.1,
      left: 0,
      right: 0,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: UIPadding.m,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        pokemonDetails.name.capitalize(),
                        style:
                            Theme.of(context).textTheme.headlineLarge!.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                      if (pokemonDetails.types != null)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: pokemonDetails.types!
                              .map(
                                (e) => LabelTag(
                                  label: e.type.name,
                                  color: Color.alphaBlend(
                                      color.withAlpha(95), Colors.white),
                                  margin: EdgeInsets.only(
                                      top: UIPadding.s, right: UIPadding.xs),
                                  padding: EdgeInsets.symmetric(
                                      vertical: UIPadding.xs,
                                      horizontal: UIPadding.s),
                                ),
                              )
                              .toList(),
                        ),
                    ],
                  ),
                ),
                Text(
                  '#${numberFormat.format(pokemonDetails.id)}',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                )
              ],
            ),
            Expanded(
              child: Container(
                child: Image.network(
                  spriteImage,
                  fit: BoxFit.fitHeight,
                  filterQuality: FilterQuality.high,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
