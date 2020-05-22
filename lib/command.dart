import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:jokes_cli/api.dart';

class JokesCommand extends Command {
  String loadingMessage = 'loading a joke';

  @override
  String get description => 'Prints a joke.';

  @override
  String get name => 'get';

  @override
  Future<void> run() async {
    final loadingString = loadingMessage;

    stdout.write('$loadingString\n');
    var joke = await JokesApi().getJoke();
    stdout.write('${joke}\n');
  }
}
