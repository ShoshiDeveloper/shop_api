// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Product _$ProductFromJson(Map<String, dynamic> json) => _Product(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      category: $enumDecode(_$ProductCategoryEnumMap, json['category']),
      price: (json['price'] as num).toDouble(),
      discount: (json['discount'] as num?)?.toInt() ?? 0,
      description: json['description'] as String?,
      weight: (json['weight'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ProductToJson(_Product instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category': _$ProductCategoryEnumMap[instance.category]!,
      'price': instance.price,
      'discount': instance.discount,
      'description': instance.description,
      'weight': instance.weight,
    };

const _$ProductCategoryEnumMap = {
  ProductCategory.homemadeSweets: 'homemadeSweets',
  ProductCategory.homeComfort: 'homeComfort',
  ProductCategory.gadgetsAndAccesories: 'gadgetsAndAccesories',
  ProductCategory.petSupplies: 'petSupplies',
  ProductCategory.drinks: 'drinks',
};
