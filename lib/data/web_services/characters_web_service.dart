import 'package:dio/dio.dart';
import 'package:rick_and_morty_bloc_pattern/constants/strings.dart';
import 'package:rick_and_morty_bloc_pattern/data/model/characters_model.dart';

class CharacterWebService {
  late Dio dio;
  CharacterWebService() {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: Duration(seconds: 20),
      receiveTimeout: Duration(seconds: 20),
    );
    dio = Dio(options);
  }
  Future<List<Results>> getAllCharacters() async {
    Response response = await dio.get('character');
    try {
      print(response.data.toString());
      return response.data;
    } on Exception catch (e) {
      print(e.toString());
      return [];
    }
  }
}
