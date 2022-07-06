import 'dart:math';

class SpeedMeter {
  Speed now() {
    return Speed(Random(DateTime.now().hashCode).nextInt(10));
  }
}

class Speed {
  final int value;

  Speed(this.value);
}
