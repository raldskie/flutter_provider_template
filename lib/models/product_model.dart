import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable()
class Product {
  final int id;
  final String title;
  final String description;
  final int price;

  Product(
      {required this.id,
      required this.title,
      required this.description,
      required this.price});

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
