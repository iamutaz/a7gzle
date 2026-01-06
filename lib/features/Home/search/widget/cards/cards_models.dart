class FilterCardModel {
  final String image;
  final String price;
  final String title;
  final String location;
  final String rate;

  const FilterCardModel({
    required this.image,
    required this.price,
    required this.rate, 
    required this.title,
    required this.location,
  });

  factory FilterCardModel.fromJson(Map<String, dynamic> json) {
    // هون باخد الليست تبع الصور الي راجعة من السيرفر وخزنتها
    List? imagesList = json['images'] as List?;
    
    // جهزت مكان للصورة ورحت تاكدت في قائمة للصور ومانها فاضية
    // بناخد مسار اول صورة وبنحولها لسترينغ 
    String finalImage = "";
    if (imagesList != null && imagesList.isNotEmpty) {
      finalImage = imagesList[0]['path']?.toString() ?? "";
    }

    //الريت اذا مو موجود بنحط --
    String finalRate = json['rate']?.toString() ?? "--";

    return FilterCardModel(
      image: finalImage,
      rate: finalRate,
      // بنجيب السعر وبنضفلو $
      price: json['price'] != null ? "\$${json['price']}" : "",
      // بناخد العنوان أو الاسم من السيرفر
      title: json['title']?.toString() ?? json['name']?.toString() ?? "",
      // بناخد المدينة أو الموقع من السيرفر
      location: json['city']?.toString() ?? json['location']?.toString() ?? "",
    );
  }
}