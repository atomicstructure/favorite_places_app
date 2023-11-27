import 'package:favorite_places_app/screens/add_place.dart';
import 'package:favorite_places_app/screens/places.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final colorScheme = ColorScheme.fromSeed(
    seedColor: const Color.fromARGB(255, 102, 6, 247),
    brightness: Brightness.dark,
    background: const Color.fromARGB(255, 56, 49, 66));

final theme = ThemeData().copyWith(
  scaffoldBackgroundColor: colorScheme.background,
  colorScheme: colorScheme,
  textTheme: GoogleFonts.ubuntuCondensedTextTheme().copyWith(
    titleSmall: GoogleFonts.ubuntuCondensed(
      fontWeight: FontWeight.bold,
    ),
    titleMedium: GoogleFonts.ubuntuCondensed(
      fontWeight: FontWeight.bold,
    ),
    titleLarge: GoogleFonts.ubuntuCondensed(
      fontWeight: FontWeight.bold,
    ),
  ),
);

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const PlacesScreen();
      },
      routes: [
        GoRoute(
          path: 'addplace',
          name: 'addplace',
          builder: (context, state) {
            return const AddPlaceScreen();
          },
        ),
      ],
    ),
  ],
);

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'Great Places',
      theme: theme,
    );
  }
}
