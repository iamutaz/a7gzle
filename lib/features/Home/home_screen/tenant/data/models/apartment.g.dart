// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apartment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Apartment _$ApartmentFromJson(Map<String, dynamic> json) => Apartment(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  price: json['price'] as String,
  area: (json['area'] as num).toInt(),
  bathrooms: (json['bathrooms'] as num).toInt(),
  city: json['city'] as String,
  description: json['description'] as String?,
  images: (json['images'] as List<dynamic>)
      .map((e) => ApartmentImage.fromJson(e as Map<String, dynamic>))
      .toList(),
  owner: Owner.fromJson(json['owner'] as Map<String, dynamic>),
  rooms: (json['rooms'] as num).toInt(),
  status: json['status'] as String,
);

Map<String, dynamic> _$ApartmentToJson(Apartment instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'description': instance.description,
  'price': instance.price,
  'city': instance.city,
  'area': instance.area,
  'rooms': instance.rooms,
  'bathrooms': instance.bathrooms,
  'status': instance.status,
  'images': instance.images,
  'owner': instance.owner,
};

ApartmentImage _$ApartmentImageFromJson(Map<String, dynamic> json) =>
    ApartmentImage(
      id: (json['id'] as num).toInt(),
      path: json['path'] as String,
    );

Map<String, dynamic> _$ApartmentImageToJson(ApartmentImage instance) =>
    <String, dynamic>{'id': instance.id, 'path': instance.path};
