class Countdown {
  final int seconds; // 剩余秒数

  const Countdown(this.seconds);

  String get hh => (seconds ~/ 3600).toString().padLeft(2, '0');
  String get mm => ((seconds % 3600) ~/ 60).toString().padLeft(2, '0');
  String get ss => (seconds % 60).toString().padLeft(2, '0');
}
