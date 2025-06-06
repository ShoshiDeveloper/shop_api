import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_api/enums/product_categories.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
abstract class Product with _$Product {
  const factory Product({
    required int id,
    required String name,
    required ProductCategory category,
    required double price,
    @Default(0) int discount,
    String? description,
    double? weight,
  }) = _Product;

  factory Product.fromJson(Map<String, Object?> json) => _$ProductFromJson(json);
}
