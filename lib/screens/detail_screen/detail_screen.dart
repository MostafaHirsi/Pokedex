import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokedex/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex/screens/detail_screen/widgets/overview.dart';
import 'package:pokedex/utils/assets.dart';
import 'package:pokedex/utils/colors.dart';

import 'widgets/details.dart';

class DetailScreen extends StatelessWidget {
  static const String routeName = "DetailScreen";
  final PokemonDetails pokemonDetails;
  const DetailScreen({super.key, required this.pokemonDetails});

  @override
  Widget build(BuildContext context) {
    Color color =
        PokemonColors.pokemonTypeColors[pokemonDetails.types!.first.type.name]!;
    double imageSize = 250;
    return Scaffold(
      body: Container(
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
              Color.alphaBlend(color.withOpacity(0.5), Colors.white),
              Color.alphaBlend(color.withOpacity(0.3), Colors.white),
            ],
          ),
        ),
        child: Stack(
          children: [
            buildDottedBackgroundImage(imageSize),
            buildBackgroundImage(imageSize),
            Details(pokemonDetails: pokemonDetails),
            Overview(pokemonDetails: pokemonDetails),
            Positioned(
              left: 20,
              top: 45,
              child: BackButton(
                color: Colors.white,
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Positioned buildDottedBackgroundImage(double imageSize) {
    return Positioned(
      left: -120,
      top: -120,
      child: SvgPicture.asset(
        SvgAssets.dottedImage,
        color: Colors.white.withOpacity(0.2),
        height: imageSize / 1.1,
        width: imageSize / 1.1,
      ),
    );
  }

  Positioned buildBackgroundImage(double imageSize) {
    return Positioned(
      right: -80,
      bottom: 100,
      top: 0,
      child: SvgPicture.asset(
        SvgAssets.pokeball,
        color: Colors.white.withOpacity(0.3),
        height: imageSize,
        width: imageSize,
      ),
    );
  }
}
