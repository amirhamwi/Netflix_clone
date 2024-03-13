import 'package:flutter_application_1/resources/rest_client/rest_client.dart';

import 'base_repo.dart';

class Repository extends BaseRepository {
  static Repository? _instance;

  RestClient? _restClient;

  Repository._internal() {
    _restClient =
        RestClient(getDioInstance(), baseUrl: 'https://api.themoviedb.org/3/');
  }

  static Repository get instance {
    _instance ??= Repository._internal();
    return _instance!;
  }

  Future getTrendingMovies({required String window, required int page}) async {
    return await _restClient!.getTrendingMovies(window: window, page: page);
  }

  Future searchMovie({required String query, required int page}) async {
    return await _restClient!.searchMovie(query: query, page: page);
  }

  Future comingsoon({required int page}) async {
    return await _restClient!.comingsoon(page: page);
  }
}
