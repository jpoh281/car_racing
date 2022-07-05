class InputParser {

  List<String> parseStringToCarNames(String? inputText) {

    if(inputText == null || inputText.isEmpty){
      throw FormatException('문자를 입력해 주세요.');
    }

    List<String> names = _parseByComma(inputText);

    for (String name in names) {
      _checkOverFiveWords(name);
    }

    return names;
  }

  List<String> _parseByComma(String inputText) {
    return inputText.split(',');
  }

  void _checkOverFiveWords(String name) {
    if(name.length > 5){
      throw FormatException('5자를 초과하지 않는 닉네임으로 입력해 주세요.');
    }
  }

  int parseStringToRound(String? inputText) {
    throw UnimplementedError();
  }
}
