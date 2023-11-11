part of 'helpers.dart';

String? expirationDate(String? timestamp) {
  try {
    DateTime date =
        DateTime.fromMillisecondsSinceEpoch(int.parse(timestamp ?? "") * 1000);

    var format = DateFormat("d/MM/yyyy - hh:mm aa").format(date);
    
    return format;
  } catch (e) {
    return timestamp;
  }
}

String getDurationMovie(String? time) {
  try {
    if (time == null) {
      return "";
    }

    //  List<String> list = time.split(":");
    //debugPrint("time! $list");

    var date = DateTime.parse("2022-12-21 $time");
    // debugPrint("DATE: $date");
    var hour = DateFormat("HH").format(date);
    var minuets = DateFormat("mm").format(date);
    var second = DateFormat("ss").format(date);

    return "${hour == "00" ? "" : "${hour}h"} ${minuets == "00" ? "" : "${minuets}m"} ${second == "00" ? "" : "${second}s"}";
  } catch (e) {
    debugPrint("Error: $e");
    return 'error';
  }
}

String dateNowWelcome() =>
    DateFormat("d/MM/yyyy - hh:mm aa").format(DateTime.now());
