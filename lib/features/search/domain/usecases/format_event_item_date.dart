import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

@injectable
class FormatEventItemDate {
  String call(DateTime dateTime) {
    final DateFormat dateFormat = DateFormat('EEE, MMM d · h.mm a');
    return dateFormat.format(dateTime);
  }
}
