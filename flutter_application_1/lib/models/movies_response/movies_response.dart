import 'package:json_annotation/json_annotation.dart';

import '../movie/movie.dart';
part 'movies_response.g.dart';

@JsonSerializable()
class MoviesResponse{
  final int page;
  final List<Movie> results;

  MoviesResponse(this.page, this.results);
factory MoviesResponse.fromJson(Map<String, dynamic> json) => _$MoviesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MoviesResponseToJson(this);
}