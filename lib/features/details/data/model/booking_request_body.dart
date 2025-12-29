import 'package:json_annotation/json_annotation.dart';

part 'booking_request_body.g.dart';

@JsonSerializable()
class BookingRequestBody {
  @JsonKey(name: "start_date")
  String startdate;
  @JsonKey(name: "end_date")
  String enddate;
  @JsonKey(name: "apartment_id")
  int roomid;

  BookingRequestBody({
    required this.enddate,
    required this.roomid,
    required this.startdate,
  });

  Map<String, dynamic> toJson() => _$BookingRequestBodyToJson(this);
}
