import 'package:json_annotation/json_annotation.dart';
part 'signupresponsebody.g.dart';

@JsonSerializable()
class Signupresponsebody {
  @JsonKey(name: "first_name")
  String firstname;
  @JsonKey(name: "last_name")
  String lastname;
  String number;
  String birthdate;
  String type;
  @JsonKey(name: "profile_photo")
  String profileimage;
  @JsonKey(name: "id_photo_front")
  String frontid;
  @JsonKey(name: "id_photo_back")
  String backid;

  Signupresponsebody(
    this.firstname,
    this.lastname,
    this.backid,
    this.birthdate,
    this.frontid,
    this.number,
    this.profileimage,
    this.type,
  );

  factory Signupresponsebody.fromJson(Map<String, dynamic> json) =>
      _$SignupresponsebodyFromJson(json);

  Map<String, dynamic> toJson() => _$SignupresponsebodyToJson(this);
}
