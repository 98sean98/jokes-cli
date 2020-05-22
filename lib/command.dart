import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:jokes_cli/api.dart';

class JokesCommand extends Command {
  @override
  String get description => 'Prints a joke.';

  @override
  String get name => 'get';

  @override
  Future<void> run() async {
    final showTime = argResults['time'];
    final stopwatch = Stopwatch();
    stopwatch.start();

    final joke = await JokesApi().getJoke();

    stopwatch.stop();

    stdout.write('${joke}\n');
    if (showTime) {
      stdout.write('Took ${stopwatch.elapsedMilliseconds}ms to fetch.\n');
    }
  }
}
