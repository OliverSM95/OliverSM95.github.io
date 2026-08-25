class Breakpoints {
  static const double mobile = 650;
  static const double tablet = 900;
  static const double desktop = 1200;

  static const double maxContentWidth = 1200;

  static double pagePadding(double width) {
    if (width >= desktop) {
      return 64;
    }

    if (width >= tablet) {
      return 40;
    }

    return 20;
  }
}
