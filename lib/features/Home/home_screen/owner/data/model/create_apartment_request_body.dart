import 'package:dio/dio.dart';

class CreateApartmentRequestBody {
  String title;
  String description;
  String price;
  int rooms;
  int bathrooms;
  String city;
  int area;
  String type;
  List<MultipartFile> images;

  CreateApartmentRequestBody({
    required this.type,
    required this.title,
    required this.area,
    required this.bathrooms,
    required this.city,
    required this.description,
    required this.images,
    required this.price,
    required this.rooms,
  });
}
