import 'package:a7gzle/features/Home/home_screen/tenant/data/models/apartment.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fav_response_body.g.dart';

@JsonSerializable()
class FavResponseBody {
  List<Apartment> data;

  FavResponseBody(this.data);

  factory FavResponseBody.fromJson(Map<String, dynamic> json) =>
      _$FavResponseBodyFromJson(json);
}
