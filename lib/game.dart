import 'dart:math';

class Game {
  int? _answer; //cant be null
  int? guessCount;

  Game() {
    var r = Random();
    _answer = r.nextInt(100) + 1;
    guessCount = 0;
  }

  int doGuess(int num) {
    if (num > _answer!) {

      guessCount = guessCount! + 1;
      return 1;

    } else if (num < _answer!) {
      return -1;
    } else {
      return 0;
    }
  }


}
