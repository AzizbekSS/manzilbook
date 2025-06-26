
class FontSizeConst {
  static final FontSizeConst _instance = FontSizeConst._init();

  static FontSizeConst get instance => _instance;

  FontSizeConst._init();

  double tinyFont = 10;
  double extraSmallFont = 12;
  double smallFont = 14;
  double mediumFont = 17;

  double largeFont = 20;
  double extraLargeFont = 24;
  double biggestFont = 24;
}