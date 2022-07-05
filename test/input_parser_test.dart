import 'package:car_racing/views/input_parser.dart';
import 'package:test/test.dart';

void main() {
  late final InputParser inputParser;

  setUpAll(() {
    inputParser = InputParser();
  });

  group("InputParser 클래스➡️ parseStringToCarNames 메소드➡️", () {
    test("오류를 통해 [null]이 입력되면 [FormatException]을 던진다.", () {
      String? inputText;

      expect(() => inputParser.parseStringToCarNames(inputText),
          throwsFormatException);
    });

    test("유저가 [''] 을 입력하면 [FormatException]을 던진다.", () {
      String? inputText = '';

      expect(() => inputParser.parseStringToCarNames(inputText),
          throwsFormatException);
    });

    group("parseByComma 메소드➡️", () {
      List<dynamic> testTexts = [
        [
          '혼자왔어요',
          ['혼자왔어요']
        ],
        [
          '혼자왔어요,둘이왔어요,셋이왔어요',
          ['혼자왔어요', '둘이왔어요', '셋이왔어요']
        ],
        [
          '혼자왔어요,둘이왔어요,셋이왔어요,둘이왔어요,혼자왔어요',
          ['혼자왔어요', '둘이왔어요', '셋이왔어요', '둘이왔어요', '혼자왔어요']
        ],
      ];

      for (var testText in testTexts) {
        test(
            "\"${testText[0]}\" [,]로 구분해 배열로 반환한다.${testText[1]}",
            () {
          expect(inputParser.parseByComma(testText[0]), testText[1]);
        });
      }
    });

    test('5자를 초과하는 이름을 입력하면 [FormatException]을 던진다.', () {
      String inputText = '1,12,123,1234,12345,123456';
      expect(() => inputParser.parseStringToCarNames(inputText),
          throwsFormatException);
    });
  });

  group("InputParser 클래스➡️ parseStringToRound 메소드➡️", () {
    test("오류를 통해 [null]이 입력되면 [FormatException]을 던진다.", () {
      String? inputText;

      expect(() => inputParser.parseStringToRound(inputText),
          throwsFormatException);
    });

    test("유저가 [''] 을 입력하면 [FormatException]을 던진다.", () {
      String? inputText = '';

      expect(() => inputParser.parseStringToRound(inputText),
          throwsFormatException);
    });

    test("유저가 음수를 입력하면 [FormatException]을 던진다.", () {
      String? inputText = '-1';

      expect(() => inputParser.parseStringToRound(inputText),
          throwsFormatException);
    });

    test("유저가 양수를 입력하면 [int]를 반환한다.", () {
      String? inputText = '1';

      expect(inputParser.parseStringToRound(inputText), 1);
    });
  });
}
