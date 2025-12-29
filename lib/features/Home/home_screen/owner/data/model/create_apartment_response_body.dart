import 'package:a7gzle/features/Home/home_screen/tenant/data/models/apartment.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_apartment_response_body.g.dart';

@JsonSerializable()
class CreateApartmentResponseBody {
  String message;

  CreateApartmentResponseBody({required this.message});

  factory CreateApartmentResponseBody.fromJson(Map<String, dynamic> json) =>
      _$CreateApartmentResponseBodyFromJson(json);
}
