# Jokes CLI
A 1-hour build and documentation challenge.

### To run
Clone this project with `git clone`.

Run `dart bin/main.dart`.

### To use executable (Alternative)
Clone this project with `git clone`.

Build dart executable `.exe` using [dart2native](https://dart.dev/tools/dart2native).
```shell script
dart2native bin/main.dart -o jokes
```

Run executable.
```shell script
./jokes
```

### Available commands
command | description | flags
--- | --- | ---
`get` | Prints a joke in the console | `-t --time` Prints time taken to fetch joke
`help` | Prints help manual.

example usage:
```shell script
jokes get -t

Chuck Norris doesn't see dead people. He makes people dead.
Took 1290ms to fetch.
```

### Dart cli
A sample command-line application with an entrypoint in `bin/`, library code
in `lib/`, and example unit test in `test/`.

Created from templates made available by Stagehand under a BSD-style
[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).
