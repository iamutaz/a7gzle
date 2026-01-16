import 'package:json_annotation/json_annotation.dart';

part 'owner_reservation_response_body.g.dart';

@JsonSerializable()
class OwnerReservationResponseBody {
  int count;
  List<OwnerReservationBody> data;
  OwnerReservationResponseBody({required this.count, required this.data});

  factory OwnerReservationResponseBody.fromJson(Map<String, dynamic> json) =>
      _$OwnerReservationResponseBodyFromJson(json);
}

@JsonSerializable()
class OwnerReservationBody {
  @JsonKey(name: "reservation_id")
  int reservationid;
  @JsonKey(name: "renter_id")
  int renterid;
  @JsonKey(name: "renter_name")
  String rentername;
  @JsonKey(name: "renter_profile_photo")
  String renterphoto;
  @JsonKey(name: "apartment_id")
  int apartmentid;
  @JsonKey(name: "apartment_title")
  String apartmentname;
  String status;
  @JsonKey(name: "start_date")
  String startdate;
  @JsonKey(name: "end_date")
  String enddate;
  @JsonKey(name: "total_price")
  double totalprice;
  @JsonKey(name: "created_at")
  String creatdeat;

  OwnerReservationBody({
    required this.creatdeat,
    required this.apartmentid,
    required this.apartmentname,
    required this.enddate,
    required this.renterid,
    required this.rentername,
    required this.renterphoto,
    required this.reservationid,
    required this.startdate,
    required this.status,
    required this.totalprice,
  });
  factory OwnerReservationBody.fromJson(Map<String, dynamic> json) =>
      _$OwnerReservationBodyFromJson(json);
}
