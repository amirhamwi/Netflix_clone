import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../models/movies_response/movies_response.dart';
part 'rest_client.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {required String baseUrl}) = _RestClient;

  @GET('trending/movie/{window}')
  Future<MoviesResponse> getTrendingMovies(
      {@Path('window') required String window,
      @Query('page') required int page,
      @Query('api_key') String apiKey = "4419d28f4a2852b542531e196460139e"});

  @GET('search/movie')
  Future<MoviesResponse> searchMovie(
      {@Query('query') required String query,
      @Query('page') required int page,
      @Query('api_key') String apiKey = "4419d28f4a2852b542531e196460139e"});

  @GET('movie/upcoming')
  Future<MoviesResponse> comingsoon(
      {@Query('page') required int page,
      @Query('api_key') String apiKey = "4419d28f4a2852b542531e196460139e"});

// @GET('movie/popular')
// Future<MoviesResponse> getPopularMovies({
//   @Query('page')required int page,
//   @Query('api_key') String apiKey = "4419d28f4a2852b542531e196460139e"
// });
}
