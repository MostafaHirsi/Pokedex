import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:injector/injector.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex/utils/padding.dart';

import 'screens/home_screen/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DartPluginRegistrant.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  Injector.appInstance.registerDependency<GlobalKey<NavigatorState>>(
      () => GlobalKey<NavigatorState>());
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<NavigatorState> navigatorKey =
        Injector.appInstance.get<GlobalKey<NavigatorState>>();
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: navigatorKey,
      theme: ThemeData(
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
      home: const HomeScreen(),
      routes: {},
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case HomeScreen.routeName:
          default:
            return PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  const HomeScreen(),
            );
        }
      },
    );
  }
}
