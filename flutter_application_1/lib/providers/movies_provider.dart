import 'package:flutter_application_1/models/movies_response/movies_response.dart';
import 'package:flutter_application_1/resources/repository/reporsitory.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'movies_provider.g.dart';

@riverpod
class TrendingMovies extends _$TrendingMovies {
  @override
  Future<MoviesResponse> build() async {
    return await Repository.instance.getTrendingMovies(window: "day", page: 1);
  }

  Future<MoviesResponse> getTrendingMovies(String window, int page) async {
    final resposne =
        await Repository.instance.getTrendingMovies(window: window, page: page);
    state = AsyncData(resposne);
    return resposne;
  }
}

@riverpod
class Search extends _$Search {
  @override
  Future<MoviesResponse> build() async {
    return await Repository.instance.getTrendingMovies(window: 'day', page: 1);
  }

  Future<MoviesResponse> searchMovie(String query, int page) async {
    final response =
        await Repository.instance.searchMovie(query: query, page: page);
    state = AsyncData(response);
    return response;
  }
}

@riverpod
class Upcoming extends _$Upcoming {
  @override
  Future<MoviesResponse> build() async {
    return await Repository.instance.comingsoon(page: 1);
  }

  Future<MoviesResponse> comingsoon(String query, int page) async {
    final response = await Repository.instance.comingsoon(page: page);
    state = AsyncData(response);
    return response;
  }
}
