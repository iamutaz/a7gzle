import 'package:json_annotation/json_annotation.dart';

part 'booking_response_body.g.dart';

@JsonSerializable()
class BookingResponseBody {
  String message;

  BookingResponseBody({required this.message});

  factory BookingResponseBody.fromJson(Map<String, dynamic> json) =>
      _$BookingResponseBodyFromJson(json);
}
