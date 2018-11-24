import 'package:args/command_runner.dart';
import 'package:shared_lib/shared_lib.dart';

void main(List<String> args) {
  CommandRunner("weather", "Flutter in Action Weather App CLI")
    ..addCommand(GenerateWeatherDataCommand())
    ..run(args);
}
