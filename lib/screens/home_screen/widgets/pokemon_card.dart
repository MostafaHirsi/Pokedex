import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pokedex/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex/models/pokemon_details/types/type.dart';
import 'package:pokedex/utils/padding.dart';
import 'package:pokedex/utils/string.dart';

class PokemonCard extends StatelessWidget {
  final PokemonDetails pokemonDetails;
  const PokemonCard({super.key, required this.pokemonDetails});

  @override
  Widget build(BuildContext context) {
    String spriteImage = pokemonDetails.sprites!.frontDefault ?? "";
    return Card(
      elevation: 50,
      shadowColor: Colors.black,
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: UIPadding.m),
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: UIPadding.m, vertical: UIPadding.l),
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: colorFor(pokemonDetails.types!.first.type.name),
              backgroundImage: NetworkImage(spriteImage),
              radius: 50,
            ),
            Container(
              margin: EdgeInsets.only(top: UIPadding.s),
              child: Text(
                pokemonDetails.name.capitalize(),
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            )
          ],
        ),
      ),
    );
  }

  Color colorFor(String text) {
    var hash = 0;
    for (var i = 0; i < text.length; i++) {
      hash = text.codeUnitAt(i) + ((hash << 5) - hash);
    }
    final finalHash = hash.abs() % (256 * 256 * 256);
    print(finalHash);
    final red = ((finalHash & 0xFF0000) >> 16);
    final blue = ((finalHash & 0xFF00) >> 8);
    final green = ((finalHash & 0xFF));
    final color = Color.fromRGBO(red, green, blue, 1).withOpacity(0.4);
    return color;
  }
}
