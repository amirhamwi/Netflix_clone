import 'package:json_annotation/json_annotation.dart';
part 'movie.g.dart';

@JsonSerializable()
class Movie{
  final bool adult;
  final int id;
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  final String title;
  @JsonKey(name: 'original_title')
  final String originalTitle;
  @JsonKey(name: 'original_language')
  final String originalLang;
  final String overview;
   @JsonKey(name: 'poster_path')
  final String? posterPath;
   @JsonKey(name: 'release_date')
  final String releaseDate;
  @JsonKey(name: 'genre_ids')
  final List<int> geners;

  Movie(this.adult, this.id, this.backdropPath, this.title, this.originalTitle, this.originalLang, this.overview, this.posterPath, this.releaseDate, this.geners);
factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  Map<String, dynamic> toJson() => _$MovieToJson(this);
}