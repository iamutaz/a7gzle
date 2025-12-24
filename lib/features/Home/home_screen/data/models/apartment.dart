import 'package:a7gzle/features/Home/home_screen/data/models/owner.dart';
import 'package:json_annotation/json_annotation.dart';

part 'apartment.g.dart';

@JsonSerializable()
class Apartment {
  int id;
  String title;
  String? description;
  String price;
  String city;
  int area;
  int rooms;
  int bathrooms;
  String status;

  List<ApartmentImage> images;
  Owner owner;

  Apartment({
    required this.id,
    required this.title,
    required this.price,
    required this.area,
    required this.bathrooms,
    required this.city,
    required this.description,
    required this.images,
    required this.owner,
    required this.rooms,
    required this.status,
  });

  factory Apartment.fromJson(Map<String, dynamic> json) =>
      _$ApartmentFromJson(json);
}

@JsonSerializable()
class ApartmentImage {
  final int id;
  final String path;

  ApartmentImage({required this.id, required this.path});

  factory ApartmentImage.fromJson(Map<String, dynamic> json) =>
      _$ApartmentImageFromJson(json);
}
