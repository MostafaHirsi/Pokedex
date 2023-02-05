import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pokedex/utils/padding.dart';
import 'package:pokedex/utils/assets.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: (-130 - UIPadding.xs),
      top: -95,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SvgPicture.asset(
            SvgAssets.pokeball,
            color: Colors.grey.shade300,
            width: 350,
            height: 350,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu_rounded,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
