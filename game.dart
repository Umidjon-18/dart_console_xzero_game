import 'dart:io';

import '../xzero/constants.dart';

void main(List<String> args) {
  game();
}

// ❌⭕️🟩

Constants constants = Constants();

Future game() async {
  constants.defaultView();
  bool navbat = true;
  List<String> history = [];
  final List<String> available = ["11","12","13","21","22","23","31","32","33"];
  for (int i = 0; i < 9; i++) {
    if (navbat) {
      print("❌ indexni kiriting : ");
      String son = stdin.readLineSync()!;
      if (!available.contains(son)) {
        print("Bunday o'rin yo'q");
        i--;
        continue;
      } else if (history.contains(son)) {
        print("Bu o'rin band");
        i--;
        continue;
      }
      history.add(son);
      List<int> orinList =
          son.split("").map((e) => int.parse(e) - 1).toList();
      constants.gameList[orinList[0]][orinList[1]] = "❌";
      if (constants.checking()) {
        constants.gameView();
        print("❌ o'yinchi g'olib bo'ldi🥳🥳🥳");
        break;
      }
      navbat = false;
    } else {
      print("⭕️ indexni kiriting : ");
      String son = stdin.readLineSync()!;
      if (!available.contains(son)) {
        print("Bunday o'rin yo'q");
        i--;
        continue;
      } else if (history.contains(son)) {
        print("Bu o'rin band");
        i--;
        continue;
      }
      history.add(son);
      List<int> orinList =
          son.toString().split("").map((e) => int.parse(e) - 1).toList();
      constants.gameList[orinList[0]][orinList[1]] = "⭕️";
      if (constants.checking()) {
        constants.gameView();
        print("⭕️ o'yinchi g'olib bo'ldi🥳🥳🥳");
        break;
      }
      navbat = true;
    }
    constants.gameView();
    if (i == 8) {
      print("Durrang bo'ldi😁😁😁");
    }
  }
}
