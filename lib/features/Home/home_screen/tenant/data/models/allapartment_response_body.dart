import 'package:a7gzle/features/Home/home_screen/tenant/data/models/apartment.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/models/meta.dart';
import 'package:json_annotation/json_annotation.dart';

part 'allapartment_response_body.g.dart';

@JsonSerializable()
class AllapartmentResponseBody {
  @JsonKey(name: "data")
  List<Apartment> apartmentlist;
  Meta meta;

  AllapartmentResponseBody({required this.apartmentlist, required this.meta});

  factory AllapartmentResponseBody.fromJson(Map<String, dynamic> json) =>
      _$AllapartmentResponseBodyFromJson(json);
}
