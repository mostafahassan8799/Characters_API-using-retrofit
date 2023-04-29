import 'package:flutter/material.dart';
import 'package:rick_and_morty_bloc_pattern/app_router.dart';

void main() {
  runApp(RickAndMortyApp(
    appRoute: AppRouter(),
  ));
}

class RickAndMortyApp extends StatelessWidget {
  final AppRouter appRoute;

  const RickAndMortyApp({super.key, required this.appRoute});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRoute.generateRoute,
    );
  }
}
