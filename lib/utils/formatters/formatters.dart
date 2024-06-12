import 'package:intl/intl.dart';

class TFormatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date); // Customize format tanggal sesuai yang dibutuhkan
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'id_ID', symbol: 'Rp').format(amount); // Customize mata uang dan simbolnya
  }

  // Dengan format nomor hp Indonesia ya, default digitnya kisaran 13 digit = 0812-1234-5678
  static String formatPhoneNumber(String phoneNumber) {
    if (phoneNumber.length == 12) {
      return '${phoneNumber.substring(0, 4)} ${phoneNumber.substring(4, 8)} ${phoneNumber.substring(8)}';
    } else if (phoneNumber.length == 11) {
      return '${phoneNumber.substring(0, 4)} ${phoneNumber.substring(4, 7)} ${phoneNumber.substring(7)}'; 
    }
    return phoneNumber;
  }
}