import 'package:a7gzle/core/networking/dio_factory.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/models/apartment.dart';
import 'package:flutter/material.dart';
// هذه الدالة وظيفتها بتبعت طلب الفلترة للسيرفر واستقبال قائمة الشقق
Future<List<Apartment>> sendFilterRequest(Map<String, dynamic> params) async {
  final dio = DioFactory.getDio();
  const String url = "http://10.0.2.2:8000/api/apartments/filtering";
  try {
    // هون بعتنا العنوان مع الشروط وبنحط الاستجابة بالريسبونس
    final response = await dio.get(url, queryParameters: params);

    // هون عم اتاكد انو رجعلي 200 يعني الريسبونس صح
    if (response.statusCode == 200) {
      var rawData = response.data; // البيانات القادمة من السيرفر

//هذا السطر وظيفته إنه يستخرج قائمة الشقق من رد السيرفر بدون ما يهتم بشكل الرد
//إذا السيرفر رجّع البيانات داخل كائن وفيه مفتاح اسمه data، فهو بياخد اللي جوّا data.
//واذا رجع قائمة فورا بياخدها متل ماهيه
//واذا مالاقا شي بيرجع قائمة فاضية
      List dataList = (rawData is Map && rawData.containsKey('data')) 
          ? rawData['data'] 
          : (rawData is List ? rawData : []);


      return dataList.map((json) => Apartment.fromJson(json)).toList();
    }
  } catch (e) {
    debugPrint("API Error: $e");
  }

  // إذا فشل الطلب أو ما لاقا نتائج، رجع قائمة فارغة 
  return [];
}