import 'package:json_annotation/json_annotation.dart';

part 'update_reservation_request_body.g.dart';

@JsonSerializable()
class UpdateReservationRequestBody {
  @JsonKey(name: "reservation_id")
  int reservationid;
  @JsonKey(name: "start_date")
  String startdate;
  @JsonKey(name: "end_date")
  String enddate;

  UpdateReservationRequestBody({
    required this.enddate,
    required this.reservationid,
    required this.startdate,
  });
  Map<String, dynamic> toJson() => _$UpdateReservationRequestBodyToJson(this);
}
