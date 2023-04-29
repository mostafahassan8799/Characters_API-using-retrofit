// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:rick_and_morty_bloc_pattern/business_logic/cubit/characters_cubit.dart';
import 'package:rick_and_morty_bloc_pattern/data/repositary/character_repositary.dart';
import 'package:rick_and_morty_bloc_pattern/data/web_services/characters_web_service.dart';
import 'package:rick_and_morty_bloc_pattern/presentation/screens/all_characters_screen.dart';
import 'package:rick_and_morty_bloc_pattern/presentation/screens/character_details_screen.dart';

import 'constants/strings.dart';

class AppRouter {
  late CharactersRepository charactersRepository;
  late CharactersCubit charactersCubit;
  AppRouter() {
    charactersRepository = CharactersRepository(CharacterWebService());
    charactersCubit = CharactersCubit(charactersRepository);
  }
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case charactersScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) => charactersCubit,
            child: CharacterScreen(),
          ),
        );

      case characterDetailsScreen:
        return MaterialPageRoute(builder: (_) => CharacterDetailsScreen());
    }
  }
}
