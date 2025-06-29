import 'package:intl/intl.dart';

class Formatters {
  static String currency(double amount) {
    return NumberFormat.currency(symbol: '\$', decimalDigits: 2).format(amount);
  }
  
  static String percent(double value) {
    return '${(value * 100).toStringAsFixed(0)}%';
  }
}
