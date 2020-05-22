import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:jokes_cli/command.dart';

Future jokesCLI(List<String> args) async {
  final runner = CommandRunner('jokes', 'dart jokes cli');
  runner.addCommand(JokesCommand());

  return await runner.run(args).catchError((e) {
    stdout.write('${e ?? 'an error has occurred'}');
    exitCode = -1;
  });
}
