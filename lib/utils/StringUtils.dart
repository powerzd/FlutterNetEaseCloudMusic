class StringUtils {
  static String revertMonth(int month) {
    var result = "";
    switch (month) {
      case 1:
        result = "Jan.";
        break;
      case 2:
        result = "Feb.";
        break;
      case 3:
        result = "Mar.";
        break;
      case 4:
        result = "Apr.";
        break;
      case 5:
        result = "May.";
        break;
      case 6:
        result = "Jun.";
        break;
      case 7:
        result = "Jul.";
        break;
      case 8:
        result = "Aug.";
        break;
      case 9:
        result = "Sep.";
        break;
      case 10:
        result = "Oco.";
        break;
      case 11:
        result = "Nov.";
        break;
      case 12:
        result = "Dec.";
        break;
    }

    return result;
  }

  static String convertMillsToDate(int millSeconds){
    DateTime millDate = DateTime.fromMillisecondsSinceEpoch(millSeconds);
    String millStr = "${millDate.year}-${millDate.month}-${millDate.day}";
    return millStr;
  }
}
