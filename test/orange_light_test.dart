import 'package:car_racing/models/orange_light.dart';
import 'package:car_racing/models/speed.dart';
import 'package:test/test.dart';

void main() {
  final Speed referenceSpeed = Speed(4);
  final OrangeLight orangeLight = OrangeLight(referenceSpeed);

  group('주황불의 전진 기준속도가 4일 때', () {
    test('자동차의 현재 속도가 4이상이면 전진한다.', () {
      Speed currentSpeed = Speed(4);
      expect(orangeLight.canGo(currentSpeed), isTrue);
    });

    test('자동차의 현재 속도가 4미만이면 멈춘다.', () {
      Speed currentSpeed = Speed(2);
      expect(orangeLight.canGo(currentSpeed), isFalse);
    });
  });
}
