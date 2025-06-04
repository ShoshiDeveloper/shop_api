import 'package:collection/collection.dart';
import 'package:shop_api/models/product.dart';

class ProductsSource {
  final _products = [
    Product(id: 0, name: 'Молоко', category: 'Молочка', price: 110, discount: 0, description: 'Молочко свежее', weight: 0.9),
    Product(id: 1, name: 'Хлеб', category: 'Мучное', price: 40, discount: 0, description: 'Хлеб только из печи', weight: 0.3),
    Product(id: 2, name: 'Чипсы', category: 'Снэки', price: 210, discount: 0, description: 'Чипсеки любимые от принглс', weight: 0.3),
  ];
  List<Product> get() => _products;
  Product? byId(int id) => _products.firstWhereOrNull((e) => e.id == id);
}
