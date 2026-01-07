import 'package:json_annotation/json_annotation.dart';

part 'favorite_request.g.dart';

@JsonSerializable()
class FavoriteRequest {
  @JsonKey(name: "apartmentId")
  int apartmentid;

  FavoriteRequest({required this.apartmentid});

  Map<String, dynamic> toJson() => _$FavoriteRequestToJson(this);
}
