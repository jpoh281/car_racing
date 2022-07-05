import 'package:car_racing/views/input_parser.dart';
import 'package:test/test.dart';

void main() {
  late final InputParser inputParser;

  setUpAll(() {
    inputParser = InputParser();
  });

  group("InputParser 클래스의 parseStringToCarNames 메소드 :", () {
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

    test('5자를 초과하는 이름이 있을 경우 에러 반환', () {
      String inputText = '1,12,123,1234,12345,123456';
      expect(() => inputParser.parseStringToCarNames(inputText),
          throwsFormatException);
    });

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
          "유저가 입력한 값: \"${testText[0]}\" , 단위로 구분해서 배열로 저장한다. 결과값: ${testText[1]}]",
          () {
        expect(inputParser.parseStringToCarNames(testText[0]), testText[1]);
      });
    }
  });

  group("InputParser 클래스의 parseStringToRound 메소드 :", () {

  });
}
