import 'banana.dart';

class Transaction {
  Map<Banana, int> itemized = {};
  double transactionTotal = 0.0;

  Transaction();

  Map<dynamic, int> addProduct(dynamic product) {
    if (itemized[product] != null) {
      itemized[product] += 1;
    } else {
      itemized[product] = 1;
    }
    _updateTotal();
    return itemized;
  }

  _updateTotal() {
    transactionTotal = 0.0;
    itemized.forEach((k, v) {
      transactionTotal += k.cost * v;
    });
  }
}