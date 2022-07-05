class InputParser {
  List<String> parseStringToCarNames(String? inputText) {
    _checkEmptyOrNull(inputText);

    List<String> names = _parseByComma(inputText!);

    for (String name in names) {
      _checkOverFiveWords(name);
    }

    return names;
  }

  List<String> _parseByComma(String inputText) {
    return inputText.split(',');
  }

  void _checkOverFiveWords(String name) {
    if (name.length > 5) {
      throw FormatException('5자를 초과하지 않는 닉네임으로 입력해 주세요.\n');
    }
  }

  int parseStringToRound(String? inputText) {
    _checkEmptyOrNull(inputText);

    RegExp integerRules = RegExp('^-?\\d\$');

    var regExpResult = integerRules.allMatches(inputText!).toList();

    if (regExpResult.isEmpty) {
      throw FormatException('숫자를 입력해 주세요.\n');
    }

    var integer = int.parse(regExpResult[0].group(0)!);

    if (integer < 0) {
      throw FormatException('0 보다 큰 숫자를 입력해주세요.\n');
    }

    return integer;
  }

  _checkEmptyOrNull(String? inputText) {
    if (inputText == null || inputText.isEmpty) {
      throw FormatException('문자를 입력해 주세요.\n');
    }
  }
}
