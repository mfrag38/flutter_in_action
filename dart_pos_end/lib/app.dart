import 'dart:html';

import 'package:dart_pos_end/classes/banana.dart';
import 'package:dart_pos_end/classes/business.dart';
import 'package:dart_pos_end/classes/transaction.dart';

class App extends Business {
  Transaction currentTransaction;
  // HTML Elements
  List<ButtonElement> productButtons;
  UListElement itemsInTransactionList;
  ButtonElement finishTransactionButton;
  ParagraphElement transactionTotalDisplay;
  Element todaysSalesTotalDisplay;

  App() {
    productButtons = document.querySelectorAll('.product-button');
    itemsInTransactionList = document.querySelector('.items');
    transactionTotalDisplay = document.querySelector('#total');
    todaysSalesTotalDisplay = document.querySelector('h3');
    finishTransactionButton =
        document.querySelector('#finish-transaction-button');
    // DOM Event Listeners
    productButtons.forEach((button) {
      button.onClick.listen((e) => _handleProductClick(e));
    });
    finishTransactionButton.onClick.listen((e) => finishCurrentTransaction());
    // Initialize product stock
    this.productStock = {
      new Banana(BananaType.Plain, 1.00): 10,
      new Banana(BananaType.Frozen, 1.25): 10,
      new Banana(BananaType.Chocolate, 1.50): 10
    };
    // init
    _beginNewTransaction();
  }

  void addItemToCurrentTransaction(Banana banana) {
    _updateProductStock(banana);
    currentTransaction.addProductToItemized( banana);
    itemsInTransactionList.children.clear();
    currentTransaction.itemized.forEach((banana, qty) {
      itemsInTransactionList.appendHtml(_makeLi(banana, qty));
    });
    transactionTotalDisplay.text =
        "${costAsCurrency(currentTransaction.transactionTotal)}";
  }

  void finishCurrentTransaction() {
    sales += currentTransaction.transactionTotal;
    todaysSalesTotalDisplay.text = "Today's sales: ${costAsCurrency(sales)}";
    itemsInTransactionList.children.clear();
    transactionTotalDisplay.text = "0.00";
    _beginNewTransaction();
  }

  // Private
  void _beginNewTransaction() {
    currentTransaction = new Transaction();
  }

  void _handleProductClick(e) {
    var banana = new Banana.fromStringType(e.target.text);
    addItemToCurrentTransaction(banana);
  }

  String _makeLi(Banana banana, int qty) {
    return "<li><p>${qty}</p><p>${banana.toString()}</p><p class='cost'>${costAsCurrency(banana.cost * qty)}</p></li>";
  }

  _updateProductStock(product) {
    if (productStock[product] != null && productStock[product] >= 1) {
      productStock[product] -= 1;
    } else {
      throw ('Out of stock!');
    }
  }
}

String costAsCurrency(double cost) => "\$" + cost.toStringAsFixed(2);
