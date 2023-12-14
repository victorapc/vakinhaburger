import 'package:intl/intl.dart';

extension FormatterExtension on double {
  String get currencyPTBR {
    final currecyFormat = NumberFormat.currency(locale: 'pt_BR', symbol: r'R$');

    return currecyFormat.format(this);
  }
}
