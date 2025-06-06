import 'package:collection/collection.dart';
import 'package:shop_api/enums/product_categories.dart';
import 'package:shop_api/models/product.dart';

class ProductsSource {
  final _products = [
    Product(id: 0, name: 'Шоколадный маффин', category: ProductCategory.homemadeSweets, price: 75, weight: 100),
    Product(id: 1, name: 'Печенье с карамелью и орехами', category: ProductCategory.homemadeSweets, price: 50, weight: 50),
    Product(id: 2, name: 'Мини-чизкейк с малиной', category: ProductCategory.homemadeSweets, price: 150, weight: 250),
    Product(id: 3, name: 'Кекс лимонный в глазури', category: ProductCategory.homemadeSweets, price: 50, weight: 100),
    Product(id: 4, name: 'Ручной мармелад (набор)', category: ProductCategory.homemadeSweets, price: 550, weight: 1000),
    Product(id: 5, name: 'Аромасвеча "Лаванда и ваниль"', category: ProductCategory.homeComfort, price: 250),
    Product(id: 6, name: 'Маленький кактус в горшочке', category: ProductCategory.homeComfort, price: 150),
    Product(id: 7, name: 'Подушка декоративная "Котик"', category: ProductCategory.homeComfort, price: 300, discount: 5),
    Product(id: 8, name: 'Тёплый плед с узором', category: ProductCategory.homeComfort, price: 1000),
    Product(id: 9, name: 'Ночник "Луна" с тремя режимами', category: ProductCategory.homeComfort, price: 1500),
    Product(id: 10, name: 'Беспроводные наушники', category: ProductCategory.gadgetsAndAccesories, price: 1500),
    Product(id: 11, name: 'Зарядка 200W с Type-C', category: ProductCategory.gadgetsAndAccesories, price: 3000, discount: 15),
    Product(id: 12, name: 'Держатель для телефона в машину', category: ProductCategory.gadgetsAndAccesories, price: 300),
    Product(id: 13, name: 'Powerbank 10000mAh', category: ProductCategory.gadgetsAndAccesories, price: 4500),
    Product(id: 14, name: 'Силиконовый чехол для iPhone', category: ProductCategory.gadgetsAndAccesories, price: 5000, discount: 25),
    Product(id: 15, name: 'Кофе молотый "Арабика" 250г', category: ProductCategory.drinks, price: 500, weight: 250),
    Product(id: 16, name: 'Чай зелёный с жасмином', category: ProductCategory.drinks, price: 250, weight: 1000),
    Product(id: 17, name: 'Сироп карамельный для напитков', category: ProductCategory.drinks, price: 300, weight: 250),
    Product(id: 18, name: 'Какао с маршмеллоу', category: ProductCategory.drinks, price: 650, weight: 1000, discount: 10),
    Product(id: 19, name: 'Матча в порошке', category: ProductCategory.drinks, price: 325, weight: 50),
  ];
  List<Product> get() => _products;
  Product? byId(int id) => _products.firstWhereOrNull((e) => e.id == id);
}
