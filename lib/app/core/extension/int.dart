import 'package:intl/intl.dart';

extension IntExtension on int {
  String formatCurrencyHuf() =>
      NumberFormat.decimalPattern('hu-HU').format(this) + ' Ft';
}
