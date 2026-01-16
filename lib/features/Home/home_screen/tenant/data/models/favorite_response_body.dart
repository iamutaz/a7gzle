import 'package:json_annotation/json_annotation.dart';

part 'favorite_response_body.g.dart';

@JsonSerializable()
class FavoriteResponseBody {
  String? message;

  FavoriteResponseBody({this.message});

  factory FavoriteResponseBody.fromJson(Map<String, dynamic> json) =>
      _$FavoriteResponseBodyFromJson(json);
}
