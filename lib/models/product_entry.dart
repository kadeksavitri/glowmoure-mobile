import 'dart:convert';

List<ProductDetail> productDetailFromJson(String str) => List<ProductDetail>.from(json.decode(str).map((x) => ProductDetail.fromJson(x)));

String productDetailToJson(List<ProductDetail> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductDetail {
    String id;
    String name;
    int price;
    String description;
    String category;
    int stock;
    String imageUrl;

    ProductDetail({
        required this.id,
        required this.name,
        required this.price,
        required this.description,
        required this.category,
        required this.stock,
        required this.imageUrl,
    });

    factory ProductDetail.fromJson(Map<String, dynamic> json) => ProductDetail(
        id: json["id"],
        name: json["name"],
        price: json["price"],
        description: json["description"],
        category: json["category"],
        stock: json["stock"],
        imageUrl: json["image_url"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "price": price,
        "description": description,
        "category": category,
        "stock": stock,
        "image_url": imageUrl,
    };
}