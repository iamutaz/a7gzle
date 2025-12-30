import 'package:json_annotation/json_annotation.dart';

part 'user_reservations_response_body.g.dart';

@JsonSerializable()
class UserReservationsResponseBody {
  List<ReservationBody> pending;
  List<ReservationBody> confirmed;
  List<ReservationBody> cancelled;
  List<ReservationBody> rejected;

  UserReservationsResponseBody({
    required this.pending,
    required this.cancelled,
    required this.confirmed,
    required this.rejected,
  });

  factory UserReservationsResponseBody.fromJson(Map<String, dynamic> json) =>
      _$UserReservationsResponseBodyFromJson(json);
}

@JsonSerializable()
class ReservationBody {
  @JsonKey(name: "id")
  int reservationid;
  @JsonKey(name: "start_date")
  String startdate;
  @JsonKey(name: "end_date")
  String enddate;
  @JsonKey(name: "user_id")
  int userid;
  @JsonKey(name: "apartment_id")
  int apartmentid;

  String status;
  @JsonKey(name: "apartment_details")
  ApartmentDetails apartmentDetails;

  ReservationBody({
    required this.apartmentDetails,
    required this.apartmentid,
    required this.enddate,
    required this.reservationid,
    required this.startdate,
    required this.status,
    required this.userid,
  });

  factory ReservationBody.fromJson(Map<String, dynamic> json) =>
      _$ReservationBodyFromJson(json);
}

@JsonSerializable()
class ApartmentDetails {
  String title;
  String price;
  String city;
  @JsonKey(name: "first_image")
  String firstiamgepath;

  ApartmentDetails({
    required this.city,
    required this.firstiamgepath,
    required this.price,
    required this.title,
  });

  factory ApartmentDetails.fromJson(Map<String, dynamic> json) =>
      _$ApartmentDetailsFromJson(json);
}
