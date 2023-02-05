import 'package:flutter/material.dart';
import 'package:pokedex/utils/padding.dart';
import 'package:pokedex/widgets/input_text.dart';

import 'widgets/menu_button.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "HomeScreen";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          MenuButton(),
          Positioned(
            top: 110,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: UIPadding.m,
              ),
              child: Column(
                children: [
                  buildHeading(context),
                  buildSubHeading(context),
                  InputText(onSubmitted: onSubmitted),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Container buildSubHeading(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: UIPadding.m),
      alignment: Alignment.centerLeft,
      child: Text(
          "Search for a pokemon by it's name or using its National Pokédex number",
          style: Theme.of(context).textTheme.labelLarge!),
    );
  }

  Container buildHeading(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: UIPadding.s),
      alignment: Alignment.centerLeft,
      child: Text(
        "Pokédex",
        style: Theme.of(context).textTheme.headlineMedium!.copyWith(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor,
            ),
      ),
    );
  }

  void onSubmitted(submittedValue) {}
}
