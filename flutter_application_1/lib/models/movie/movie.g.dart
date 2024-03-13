// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Movie _$MovieFromJson(Map<String, dynamic> json) => Movie(
      json['adult'] as bool,
      json['id'] as int,
      json['backdrop_path'] as String?,
      json['title'] as String,
      json['original_title'] as String,
      json['original_language'] as String,
      json['overview'] as String,
      json['poster_path'] as String?,
      json['release_date'] as String,
      (json['genre_ids'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$MovieToJson(Movie instance) => <String, dynamic>{
      'adult': instance.adult,
      'id': instance.id,
      'backdrop_path': instance.backdropPath,
      'title': instance.title,
      'original_title': instance.originalTitle,
      'original_language': instance.originalLang,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'genre_ids': instance.geners,
    };
