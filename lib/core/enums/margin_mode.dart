enum MarginMode { cross, isolated }

extension MarginModeX on MarginMode {
  String get rawValue {
    switch (this) {
      case MarginMode.cross:
        return 'Cross';
      case MarginMode.isolated:
        return 'Isolated';
    }
  }
}
