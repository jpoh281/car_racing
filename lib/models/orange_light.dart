import 'package:car_racing/models/speed.dart';
import 'package:meta/meta.dart';

@immutable
class OrangeLight {
  final Speed referenceSpeed;

  const OrangeLight(this.referenceSpeed);

  bool canGo(Speed speed) {
    return speed.value >= referenceSpeed.value;
  }
}
