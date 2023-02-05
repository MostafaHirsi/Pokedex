import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/blocs/search/search_bloc.dart';
import 'package:pokedex/screens/home_screen/widgets/clefairy.dart';
import 'package:pokedex/screens/home_screen/widgets/pokemon_card.dart';
import 'package:pokedex/utils/assets.dart';
import 'package:pokedex/utils/padding.dart';
import 'package:pokedex/widgets/input_text.dart';

import 'widgets/menu_button.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "HomeScreen";
  late SearchBloc searchBloc;
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    searchBloc = BlocProvider.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocBuilder<SearchBloc, SearchState>(
        bloc: searchBloc,
        builder: (context, state) {
          return Stack(
            alignment: Alignment.topCenter,
            children: [MenuButton(), buildBody(context, state)],
          );
        },
      ),
    );
  }

  Positioned buildBody(BuildContext context, SearchState searchState) {
    return Positioned(
      top: 110,
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: UIPadding.m,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            buildHeading(context),
            buildSubHeading(context),
            InputText(
              onSubmitted: onSubmitted,
              hintText: 'Jigglypuff',
              prefixIcon: Icons.search,
              controller: TextEditingController(text: "pikachu"),
            ),
            if (searchState is SearchError || searchState is SearchLoading)
              Spacer(
                flex: 2,
              ),
            if (searchState is SearchLoading)
              Expanded(
                child: Container(
                  height: 50,
                  width: 50,
                  child: Image.asset(
                    GifAssets.pokeballShake,
                    height: 50,
                    width: 50,
                  ),
                ),
              ),
            if (searchState is SearchComplete &&
                searchState.pokemonDetails != null)
              PokemonCard(
                pokemonDetails: searchState.pokemonDetails!,
              ),
            if (searchState is SearchError)
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Oh no! Looks like something went wrong",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ),
            if (searchState is SearchError || searchState is SearchLoading)
              Spacer(flex: 4)
          ],
        ),
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

  void onSubmitted(String submittedValue) {
    if (submittedValue.isNotEmpty) {
      searchBloc.add(CommitSearchEvent(submittedValue));
    }
  }
}
