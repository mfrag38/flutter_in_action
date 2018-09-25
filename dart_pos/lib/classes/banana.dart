enum BananaType { Plain, Frozen, Chocolate }

class Banana {
  final BananaType type;
  final double cost;
  Banana(this.type, this.cost);

  factory Banana.fromStringType(String buttonText) {
    BananaType type;
    double cost;
    switch (buttonText) {
      case ('Plain Banana'):
        type = BananaType.Plain;
        cost = 1.00;
        break;
      case ('Frozen Banana'):
        type = BananaType.Frozen;
        cost = 1.25;
        break;
      case ('Chocolate Banana'):
        type = BananaType.Chocolate;
        cost = 1.50;
        break;
    }
    return new Banana(type, cost);
  }

  @override
  String toString() => this.type.toString().split('.')[1];

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Banana && runtimeType == other.runtimeType && type == other.type;

  @override
  int get hashCode => type.hashCode;
}
