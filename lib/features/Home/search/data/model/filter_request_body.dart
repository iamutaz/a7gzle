import 'package:json_annotation/json_annotation.dart';

part 'filter_request_body.g.dart';

@JsonSerializable()
class FilterRequestBody {
  @JsonKey(name: "min_rooms")
  int? minrooms;
  @JsonKey(name: "max_rooms")
  int? maxrooms;
  @JsonKey(name: "min_bathrooms")
  int? minbathrooms;
  @JsonKey(name: "max_bathrooms")
  int? maxbathrooms;
  @JsonKey(name: "max_area")
  int? maxarea;
  @JsonKey(name: "min_area")
  int? minarea;
  @JsonKey(name: "min_price")
  String? minprice;
  @JsonKey(name: "max_price")
  String? maxprice;
  String? city;
  FilterRequestBody({
    this.city,
    this.maxarea,
    this.maxbathrooms,
    this.maxprice,
    this.maxrooms,
    this.minarea,
    this.minbathrooms,
    this.minprice,
    this.minrooms,
  });

  Map<String, dynamic> toJson() => _$FilterRequestBodyToJson(this);
}
