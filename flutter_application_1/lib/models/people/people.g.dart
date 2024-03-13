// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'people.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

People _$PeopleFromJson(Map<String, dynamic> json) => People(
      json['adult'] as bool,
      json['id'] as int,
      json['name'] as String,
      json['orginal_name'] as String,
      json['media_type'] as String,
      json['gender'] as int,
      json['profile_path'] as String,
      (json['known_for'] as List<dynamic>)
          .map((e) => Movie.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PeopleToJson(People instance) => <String, dynamic>{
      'adult': instance.adult,
      'id': instance.id,
      'name': instance.name,
      'orginal_name': instance.orginalName,
      'media_type': instance.mediaType,
      'gender': instance.gender,
      'profile_path': instance.profilePath,
      'known_for': instance.movies,
    };
