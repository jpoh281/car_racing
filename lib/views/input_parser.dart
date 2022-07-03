class InputParser {
  List<String> parseStringToCarNames(String? inputText) {
    List<String> parsedByComma = _parseByComma(inputText);

    for (String name in parsedByComma) {
      _checkOverFiveWords(name);
    }

    return parsedByComma;
  }

  List<String> _parseByComma(String? inputText) {
    throw UnimplementedError();
  }

  void _checkOverFiveWords(String name) {
    throw UnimplementedError();
  }

  int parseStringToRound(String? inputText) {
    throw UnimplementedError();
  }
}
