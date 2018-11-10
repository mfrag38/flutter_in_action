class Temperature {
  final int current;
  final TemperatureUnit unit;

  Temperature(this.current, {this.unit = TemperatureUnit.celsius});

  @override
  String toString() {
    return 'Temperature{current: $current, unit: ${unit.toString()}';
  }
}

enum TemperatureUnit { celsius, fahrenheit, kelvin }
