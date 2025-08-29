/// All [double] data type extensions will be placed here
///
extension DoubleFormatting on double {
  String toDecimalString({bool useComma = false, bool keepDecimal = false}) {
    String result = toStringAsFixed(2);

    if (!keepDecimal && result.endsWith('.00')) {
      result = toInt().toString();
    }

    if (useComma) {
      result = result.replaceAllMapped(
          RegExp(r'\B(?=(\d{3})+(?!\d))'), (match) => ',');
    }
    return result;
  }
}
