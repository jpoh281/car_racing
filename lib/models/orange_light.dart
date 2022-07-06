import 'package:car_racing/models/speed_meter.dart';

class OrangeLight {
  final Speed referenceSpeed;

  OrangeLight(this.referenceSpeed);

  bool canGo(Speed speed) {
    return speed.value >= 4;
  }
}
