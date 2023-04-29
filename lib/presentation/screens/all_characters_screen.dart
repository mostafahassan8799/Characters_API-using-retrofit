import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty_bloc_pattern/business_logic/cubit/characters_cubit.dart';
import 'package:rick_and_morty_bloc_pattern/constants/my_colors.dart';
import 'package:rick_and_morty_bloc_pattern/data/model/characters_model.dart';

class CharacterScreen extends StatefulWidget {
  const CharacterScreen({super.key});

  @override
  State<CharacterScreen> createState() => _CharacterScreenState();
}

class _CharacterScreenState extends State<CharacterScreen> {
  late List<Results> allChatacters;

  @override
  void initState() {
    super.initState();
    allChatacters =
        BlocProvider.of<CharactersCubit>(context).getAllCharacters();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.myYellow,
        title: Text(
          'Rick and Morty',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
