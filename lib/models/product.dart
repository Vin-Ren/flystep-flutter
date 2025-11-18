// To parse this JSON data, do
//
//     final products = productsFromJson(jsonString);

import 'dart:convert';

Products productsFromJson(String str) => Products.fromJson(json.decode(str));

String productsToJson(Products data) => json.encode(data.toJson());

class Products {
    String status;
    List<Product> products;

    Products({
        required this.status,
        required this.products,
    });

    factory Products.fromJson(Map<String, dynamic> json) => Products(
        status: json["status"],
        products: List<Product>.from(json["products"].map((x) => Product.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
    };
}

class Product {
    String id;
    String name;
    String description;
    int price;
    int stock;
    String thumbnail;
    bool isFeatured;
    String category;
    String? user;
    bool isOwner;

    Product({
        required this.id,
        required this.name,
        required this.description,
        required this.price,
        required this.stock,
        required this.thumbnail,
        required this.isFeatured,
        required this.category,
        required this.user,
        required this.isOwner,
    });

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        price: json["price"],
        stock: json["stock"],
        thumbnail: json["thumbnail"],
        isFeatured: json["is_featured"],
        category: json["category"],
        user: json["user"],
        isOwner: json["is_owner"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "price": price,
        "stock": stock,
        "thumbnail": thumbnail,
        "is_featured": isFeatured,
        "category": category,
        "user": user,
        "is_owner": isOwner,
    };
}
