import 'package:intl/intl.dart';

class Utils {
  const Utils._();
  static String getCurrencyInDecimalFormat(int amount) {
    return "₹ ${NumberFormat.decimalPattern('en_IN').format(amount)}";
  }
}
