import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokedex/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex/models/pokemon_details/types/type.dart';
import 'package:pokedex/utils/assets.dart';
import 'package:pokedex/utils/colors.dart';
import 'package:pokedex/utils/padding.dart';
import 'package:pokedex/utils/string.dart';
import 'package:pokedex/widgets/label_tag.dart';

class PokemonCard extends StatelessWidget {
  final PokemonDetails pokemonDetails;
  const PokemonCard({super.key, required this.pokemonDetails});

  @override
  Widget build(BuildContext context) {
    String spriteImage = pokemonDetails.sprites!.frontDefault ?? "";
    Color color =
        PokemonColors.pokemonTypeColors[pokemonDetails.types!.first.type.name]!;
    return Card(
      elevation: 10,
      color: Colors.transparent,
      child: Container(
          padding: EdgeInsets.only(
            top: UIPadding.s,
            left: UIPadding.s,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(
              Radius.circular(
                12,
              ),
            ),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomRight,
              stops: [0.1, 0.9],
              colors: [
                Color.alphaBlend(color.withOpacity(0.8), Colors.white),
                Color.alphaBlend(color.withOpacity(0.7), Colors.white),
              ],
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                bottom: -50,
                right: -60,
                child: SvgPicture.asset(
                  SvgAssets.pokeball,
                  color: Colors.grey.shade50.withOpacity(0.14),
                  width: 150,
                  height: 150,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildPokemonName(context),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildPokemonTypeTags(color),
                      buildPokemonImage(spriteImage)
                    ],
                  ),
                ],
              ),
            ],
          )),
    );
  }

  Container buildPokemonName(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Text(
        pokemonDetails.name.capitalize(),
        style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }

  Expanded buildPokemonImage(String spriteImage) {
    return Expanded(
      flex: 7,
      child: Container(
        alignment: Alignment.topCenter,
        child: Transform.scale(
          scale: 1,
          child: Image.network(
            spriteImage,
          ),
        ),
      ),
    );
  }

  Flexible buildPokemonTypeTags(Color color) {
    return Flexible(
      flex: 5,
      child: ListView.builder(
        itemCount: pokemonDetails.types!.length,
        shrinkWrap: true,
        itemBuilder: (context, index) => LabelTag(
          label: pokemonDetails.types![index].type.name,
          color: Color.alphaBlend(color.withAlpha(170), Colors.white),
        ),
      ),
    );
  }
}
