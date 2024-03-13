import 'package:flutter_application_1/models/movie/movie.dart';
import 'package:json_annotation/json_annotation.dart';
part 'people.g.dart';

@JsonSerializable()
class People {
  final bool adult;
  final int id;
  final String name;
  @JsonKey(name: 'orginal_name')
  final String orginalName;
  @JsonKey(name: 'media_type')
  final String mediaType;
  final int gender;
  @JsonKey(name: 'profile_path')
  final String profilePath;
  @JsonKey(name: 'known_for')
  final List<Movie> movies;

  People(this.adult, this.id, this.name, this.orginalName, this.mediaType,
      this.gender, this.profilePath, this.movies);
  factory People.fromJson(Map<String, dynamic> json) => _$PeopleFromJson(json);

  Map<String, dynamic> toJson() => _$PeopleToJson(this);
}
