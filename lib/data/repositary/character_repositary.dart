import 'package:rick_and_morty_bloc_pattern/data/model/characters_model.dart';
import 'package:rick_and_morty_bloc_pattern/data/web_services/characters_web_service.dart';

class CharactersRepository {
  final CharacterWebService characterWebService;

  CharactersRepository(this.characterWebService);
  Future<List<Results>> getAllCharacters() async {
    final characters = await characterWebService.getAllCharacters();
    return characters
        .map((character) => Results.fromJson(character.toJson()))
        .toList();
  }
}
