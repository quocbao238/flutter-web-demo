class SizeHelper {
  static getSizePadding(double size) {
    return size * 0.085;
  }

  static getSizeTitle4(double size, {double ratio = 0.04}) {
    return size * ratio;
  }

  static getSizeTitle2(double size, {double ratio = 0.02}) {
    return size * ratio;
  }

  static getSizeTitle3(double size) {
    return size * 0.03;
  }

  static getSizeTitle1(double size) {
    return size * 0.01;
  }
}
