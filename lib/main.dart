import 'dart:ui';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:injector/injector.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex/blocs/search/search_bloc.dart';
import 'package:pokedex/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex/screens/detail_screen/detail_screen.dart';
import 'package:pokedex/services/poke_api_service.dart';
import 'package:pokedex/utils/padding.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'screens/home_screen/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DartPluginRegistrant.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  Dio dio = Dio();
  Injector.appInstance.registerDependency<Dio>(() => dio);
  Injector.appInstance
      .registerDependency<PokeApiService>(() => PokeApiService(dio));
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    PokeApiService pokeApiService = Injector.appInstance.get<PokeApiService>();
    return MaterialApp(
      title: 'Pokedex',
      theme: ThemeData(
        fontFamily: 'Lato',
        colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: Color(0xFF5D5E7D),
          onPrimary: Color(0xFF5D5E7D),
          secondary: Color(0xFF191414),
          onSecondary: Color(0xFF191414),
          error: Colors.white,
          onError: Colors.white,
          background: Color(0xFF191414),
          onBackground: Color(0xFF191414),
          surface: Color(0xFF535353),
          onSurface: Color(0xFF535353),
          secondaryContainer: Colors.white,
          onSecondaryContainer: Colors.white,
        ),
        textTheme: GoogleFonts.latoTextTheme(),
        tabBarTheme: const TabBarTheme(
          unselectedLabelStyle:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          labelStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelColor: Colors.grey,
          labelColor: Colors.black,
        ),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          color: Colors.transparent,
        ),
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(color: Colors.grey.shade400),
          prefixIconColor: Colors.grey.shade400,
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(
                8,
              ),
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(
                8,
              ),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(
                8,
              ),
            ),
          ),
          filled: true,
          fillColor: Colors.grey.shade200.withOpacity(0.7),
          contentPadding: EdgeInsets.symmetric(
            horizontal: UIPadding.s,
            vertical: UIPadding.s,
          ),
        ),
      ),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case DetailScreen.routeName:
            return PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) {
                PokemonDetails pokemonDetails =
                    settings.arguments as PokemonDetails;
                return DetailScreen(pokemonDetails: pokemonDetails);
              },
            );
          case HomeScreen.routeName:
          default:
            return PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) {
                return BlocProvider(
                  create: (context) => SearchBloc(pokeApiService),
                  child: HomeScreen(),
                );
              },
            );
        }
      },
    );
  }
}
