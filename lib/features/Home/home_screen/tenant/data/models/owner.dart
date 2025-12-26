import 'package:json_annotation/json_annotation.dart';

part 'owner.g.dart';

@JsonSerializable()
class Owner {
  int id;
  @JsonKey(name: "first_name")
  String firstname;
  @JsonKey(name: "last_name")
  String lastname;
  @JsonKey(name: "profile_photo")
  String profilephoto;

  Owner({
    required this.firstname,
    required this.id,
    required this.lastname,
    required this.profilephoto,
  });

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);

  Map<String, dynamic> toJson() => _$OwnerToJson(this);
}
