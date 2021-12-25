// ignore_for_file: avoid_print

import 'dart:io';
import 'dart:ui';

import 'package:guess_number/game.dart';

void main() {
  const maxRandom = 100;
  var game = Game();

  var isCorrect = false;
  var guessCount = 0;

  print('╔════════════════════════════════════════');
  print('║            GUESS THE NUMBER            ');
  print('╟────────────────────────────────────────');

  do {
    stdout.write('║ Guess the number between 1 and $maxRandom: ');
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if (guess == null) {
      continue;
    }

    guessCount++;

    var result = game.doGuess(guess);

    if (result == 1) {
      print('║ ➜ $guess is TOO HIGH! ▲');
      print('╟────────────────────────────────────────');
    } else if (result == -1) {
      print('║ ➜ $guess is TOO LOW! ▼');
      print('╟────────────────────────────────────────');
    } else {
      print('║ ➜ $guess is CORRECT ❤, total guesses: $guessCount');
      print('╟────────────────────────────────────────');

    }

    if (isCorrect) {
      stdout.write('Play again? (Y/N): ');
      var input2 = stdin.readLineSync();
      var guess2 = input2.toString();

      if (guess2 == 'Y' || guess2 == 'y') {
        continue;
      } else if(guess2 == 'N' || guess2 == 'n') {
        isCorrect = true;
      }
    }
  } while (!isCorrect);

  print('║                 THE END                ');
  print('╚════════════════════════════════════════');
}
