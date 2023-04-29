import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:rick_and_morty_bloc_pattern/data/model/characters_model.dart';
import 'package:rick_and_morty_bloc_pattern/data/repositary/character_repositary.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  List<Results>? characters;
  final CharactersRepository charactersRepository;
  CharactersCubit(this.charactersRepository) : super(CharactersInitial());

  List<Results> getAllCharacters() {
    charactersRepository.getAllCharacters().then((characters) {
      emit(CharactersSuccess(characters: characters));
      this.characters = characters;
    });
    return characters!;
  }
}
