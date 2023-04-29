part of 'characters_cubit.dart';

@immutable
abstract class CharactersState {}

class CharactersInitial extends CharactersState {}

class CharactersIsLoading extends CharactersState {}

class CharactersSuccess extends CharactersState {
  final List<Results> characters;

  CharactersSuccess({required this.characters});
}

class CharactersFailed extends CharactersState {}
