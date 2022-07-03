import 'package:car_racing/views/input_parser.dart';
import 'package:test/test.dart';

void main() {
  late final InputParser inputParser;

  setUpAll(() => {
        setUp(() {
          inputParser = InputParser();
        }),
      });

  group("InputParser 클래스의 parseStringToCarNames 메소드", () {
    test("유저가 입력한 값을 , 단위로 구분해서 배열에 저장한다.", () {});

    test('5자를 초과하는 이름이 있을 경우 에러 반환', () {});

    test('5자를 초과하는 이름이 없을 경우 성공적으로 배열을 반환한다. ', () {});
  });
}
