class StringFormatter {
  /// 3.5 => 3.5 and 10.0 => 10
  String formatNumber(double value) {
    String result = value.toStringAsFixed(1);

    if (result.endsWith('.0')) {
      result = result.substring(0, result.length - 2);
    }

    return result;
  }
}
