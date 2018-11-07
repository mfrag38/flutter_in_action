import 'dart:io';

void main() {
  stdout.writeln('Greet somebody');
  String input = stdin.readLineSync();
  return helloWorld(input);
}

void helloWorld(String name) {
  print('Hello, $name');
}