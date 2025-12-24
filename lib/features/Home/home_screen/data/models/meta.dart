import 'package:json_annotation/json_annotation.dart';

part 'meta.g.dart';

@JsonSerializable()
class Meta {
  @JsonKey(name: 'current_page')
  int currentPage;

  @JsonKey(name: 'last_page')
  int lastPage;

  Meta({required this.currentPage, required this.lastPage});

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}
