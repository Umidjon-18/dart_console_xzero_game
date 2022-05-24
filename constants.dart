class Constants {
  var startGameList = [
    ["🟩", "🟩", "🟩"],
    ["🟩", "🟩", "🟩"],
    ["🟩", "🟩", "🟩"]
  ];

  var gameList = [
    ["🕓", "🕔", "🕕"],
    ["🕖", "🕗", "🕘"],
    ["🕙", "🕚", "🕛"]
  ];
  void defaultView() {
    int i = 1;
    startGameList.forEach((element) {
      print("  ----- ---- ---- ");
      var lineList = "";
      element.forEach((value) {
        lineList += value + " | ";
      });
      print("$i | $lineList");
      i++;
    });
    print("  ----- ---- ---- ");
    print("    1    2    3 ");
  }

  void gameView() {
      int i = 1;
    gameList.forEach((element) {
      print("  ----- ---- ---- ");
      var lineList = "";
      element.forEach((value) {
        lineList += value + " | ";
      });
      print("$i | $lineList");
      i++;
    });
    print("  ----- ---- ---- ");
    print("    1    2    3 ");
  }

  bool checking() {
    if (gameList[0][0] == gameList[0][1] && gameList[0][1] == gameList[0][2]) {
      return true;
    }
    if (gameList[1][0] == gameList[1][1] && gameList[1][1] == gameList[1][2]) {
      return true;
    }
    if (gameList[2][0] == gameList[2][1] && gameList[2][1] == gameList[2][2]) {
      return true;
    }
    if (gameList[0][0] == gameList[1][0] && gameList[1][0] == gameList[2][0]) {
      return true;
    }
    if (gameList[0][1] == gameList[1][1] && gameList[1][1] == gameList[2][1]) {
      return true;
    }
    if (gameList[0][2] == gameList[1][2] && gameList[1][2] == gameList[2][2]) {
      return true;
    }
    if (gameList[0][0] == gameList[1][1] && gameList[1][1] == gameList[2][2]) {
      return true;
    }
    if (gameList[0][2] == gameList[1][1] && gameList[1][1] == gameList[2][0]) {
      return true;
    }
    return false;
  }
}
