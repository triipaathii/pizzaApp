import './homepage.dart';

class PizzaModel {
  String? pizzaCategory;
  String? pizzaCrust;
  String? pizzaSize;
  int? pizzaPrice;
  int pizzaTotalPrice = 0;

  final pizzaOrderList = [];

  PizzaModel(
      this.pizzaCategory, this.pizzaCrust, this.pizzaSize, this.pizzaPrice) {
    bool elementFound = false;
    pizzaTotalPrice += pizzaPrice!;
    for (int i = 0; i < pizzaOrderList.length; i++) {
      if (pizzaOrderList[i]['category'] == pizzaCategory &&
          pizzaOrderList[i]['crust'] == pizzaCrust &&
          pizzaOrderList[i]['size'] == pizzaSize) {
        pizzaOrderList[i]['price'] += pizzaPrice;
        pizzaOrderList[i]['count'] += 1;
        elementFound = true;
      }
    }
    if (!elementFound) {
      pizzaOrderList.add({
        'category': pizzaCategory,
        'crust': pizzaCrust,
        'size': pizzaSize,
        'price': pizzaPrice,
        'count': 1
      });
    }
    print(pizzaOrderList);
  }
}
