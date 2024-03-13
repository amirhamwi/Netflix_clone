import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_application_1/models/people/people.dart';
part 'people_response.g.dart';

@JsonSerializable()
class PeopleResponse {
  final int page;
  final List<People> results;

  PeopleResponse(this.page, this.results);
  factory PeopleResponse.fromJson(Map<String, dynamic> json) =>
      _$PeopleResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PeopleResponseToJson(this);
}
