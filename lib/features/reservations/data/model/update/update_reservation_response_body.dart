import 'package:json_annotation/json_annotation.dart';

part 'update_reservation_response_body.g.dart';

@JsonSerializable()
class UpdateReservationResponseBody {
  String message;

  UpdateReservationResponseBody({required this.message});

  factory UpdateReservationResponseBody.fromJson(Map<String, dynamic> json) =>
      _$UpdateReservationResponseBodyFromJson(json);
}
