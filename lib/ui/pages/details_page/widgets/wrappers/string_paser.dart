abstract class StringParser {
  static String parseSelectedNumbers(
      {required String suffix, required num valueMin, required num valueMax}) {
    if (valueMin > 0 && valueMax > valueMin) {
      return '$valueMin $suffix - $valueMax $suffix';
    } else if (valueMin <= 0 && valueMax > 0) {
      return 'До $valueMax $suffix';
    } else if (valueMin > 0 && valueMax <= 0) {
      return 'От $valueMin $suffix';
    }
    return 'Любая';
  }
}
