import 'package:dart_pos_end/classes/banana.dart';

class Transaction {
  Map<Banana, int> itemized = {};
  double transactionTotal = 0.0;

  Transaction();

  Map<dynamic, int> addProductToItemized(dynamic product) {
    itemized.update(product, (product) {
      product += 1;
    }, ifAbsent: () => 1);
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
