
class ProductModel {
  final String id;
  final List<dynamic> images;
  final String name;
  final String description;
  final int inStock;
  final int discount;
  final int price;
  final String category;
  final bool isNew;
  final bool isPopular;
  // final Timestamp? createdAt;
  final Rating? rating;

  ProductModel({
    this.id = '',
    this.images = const [],
    this.name = '',
    this.description = '',
    this.inStock =0,
    this.price = 0,
    this.discount = 0,
    this.category = '',
    this.isPopular = false,
    this.isNew = false,
     this.rating,
    // this.createdAt,
  });

  factory ProductModel.fromJson(
      Map<String, dynamic> product) =>
      ProductModel(
        id: product['id'],
        images: product['images'],
        name: lang == 'ar' ? product['ar_title'] : product['en_title'],
        description: lang == 'ar'
            ? product['ar_describtion']
            : product['en_describtion'],
        price: product['price'],
        inStock: product['inStock'],
        isNew: product['isNew'],
        isPopular: product['isPopular'],
        discount: product['discount_precent'],
        category: product['category'],
        // createdAt: product['createdAt'],
        rating: Rating.fromJson(product['rating']),
      );
}

class Rating {
  final int value;
  final int count;
  Rating({
    this.value =0,
    this.count =0,
  });
  factory Rating.fromJson(Map<String, dynamic> json) => Rating(
    value: json['rate_value'],
    count: json['persons_num'],
  );
}
String lang = 'ar';