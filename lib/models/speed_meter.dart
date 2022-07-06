import 'dart:math';

import 'package:car_racing/models/speed.dart';
import 'package:meta/meta.dart';

@immutable
class SpeedMeter {
  const SpeedMeter();

  Speed now() {
    return Speed(Random(DateTime.now().hashCode).nextInt(10));
  }
}
