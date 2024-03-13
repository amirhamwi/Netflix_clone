// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'people_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PeopleResponse _$PeopleResponseFromJson(Map<String, dynamic> json) =>
    PeopleResponse(
      json['page'] as int,
      (json['results'] as List<dynamic>)
          .map((e) => People.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PeopleResponseToJson(PeopleResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
    };
