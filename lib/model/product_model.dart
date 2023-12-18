import 'dart:convert';

import 'package:flutter/foundation.dart';

class ProductsModel {
  Products? products;
  int? total;
  int? skip;
  int? limit;
  ProductsModel({
    this.products,
    this.total,
    this.skip,
    this.limit,
  });

  ProductsModel copyWith({
    Products? products,
    int? total,
    int? skip,
    int? limit,
  }) {
    return ProductsModel(
      products: products ?? this.products,
      total: total ?? this.total,
      skip: skip ?? this.skip,
      limit: limit ?? this.limit,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    if (products != null) {
      result.addAll({'products': products!.toMap()});
    }
    if (total != null) {
      result.addAll({'total': total});
    }
    if (skip != null) {
      result.addAll({'skip': skip});
    }
    if (limit != null) {
      result.addAll({'limit': limit});
    }

    return result;
  }

  factory ProductsModel.fromMap(Map<String, dynamic> map) {
    return ProductsModel(
      products:
          map['products'] != null ? Products.fromMap(map['products']) : null,
      total: map['total']?.toInt(),
      skip: map['skip']?.toInt(),
      limit: map['limit']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductsModel.fromJson(String source) =>
      ProductsModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ProductsModel(products: $products, total: $total, skip: $skip, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProductsModel &&
        other.products == products &&
        other.total == total &&
        other.skip == skip &&
        other.limit == limit;
  }

  @override
  int get hashCode {
    return products.hashCode ^ total.hashCode ^ skip.hashCode ^ limit.hashCode;
  }
}

class Products {
  int id;
  String title;
  String description;
  int price;
  double discountPercentage;
  double rating;
  int stock;
  String brand;
  String category;
  String thumbnail;

  List<String>? images;
  Products({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.brand,
    required this.category,
    required this.thumbnail,
    this.images,
  });

  Products copyWith({
    int? id,
    String? title,
    String? description,
    int? price,
    double? discountPercentage,
    double? rating,
    int? stock,
    String? brand,
    String? category,
    String? thumbnail,
    List<String>? images,
  }) {
    return Products(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      price: price ?? this.price,
      discountPercentage: discountPercentage ?? this.discountPercentage,
      rating: rating ?? this.rating,
      stock: stock ?? this.stock,
      brand: brand ?? this.brand,
      category: category ?? this.category,
      thumbnail: thumbnail ?? this.thumbnail,
      images: images ?? this.images,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'title': title});
    result.addAll({'description': description});
    result.addAll({'price': price});
    result.addAll({'discountPercentage': discountPercentage});
    result.addAll({'rating': rating});
    result.addAll({'stock': stock});
    result.addAll({'brand': brand});
    result.addAll({'category': category});
    result.addAll({'thumbnail': thumbnail});
    if (images != null) {
      result.addAll({'images': images});
    }

    return result;
  }

  factory Products.fromMap(Map<String, dynamic> map) {
    return Products(
      id: map['id']?.toInt() ?? 0,
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      price: map['price']?.toInt() ?? 0,
      discountPercentage: map['discountPercentage']?.toDouble() ?? 0.0,
      rating: map['rating']?.toDouble() ?? 0.0,
      stock: map['stock']?.toInt() ?? 0,
      brand: map['brand'] ?? '',
      category: map['category'] ?? '',
      thumbnail: map['thumbnail'] ?? '',
      images: List<String>.from(map['images']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Products.fromJson(String source) =>
      Products.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Products(id: $id, title: $title, description: $description, price: $price, discountPercentage: $discountPercentage, rating: $rating, stock: $stock, brand: $brand, category: $category, thumbnail: $thumbnail, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Products &&
        other.id == id &&
        other.title == title &&
        other.description == description &&
        other.price == price &&
        other.discountPercentage == discountPercentage &&
        other.rating == rating &&
        other.stock == stock &&
        other.brand == brand &&
        other.category == category &&
        other.thumbnail == thumbnail &&
        listEquals(other.images, images);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        description.hashCode ^
        price.hashCode ^
        discountPercentage.hashCode ^
        rating.hashCode ^
        stock.hashCode ^
        brand.hashCode ^
        category.hashCode ^
        thumbnail.hashCode ^
        images.hashCode;
  }
}
