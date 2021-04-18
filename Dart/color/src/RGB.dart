class RGB {
  static final RGB kBlack = RGB(0, 0, 0);
  static final RGB kWhite = RGB(255, 255, 255);
  static final RGB kRed = RGB(255, 0, 0);
  static final RGB kGreen = RGB(0, 255, 0);
  static final RGB kBlue = RGB(0, 0, 255);

  int _red;
  int _green;
  int _blue;

  RGB([
    this._red = 0,
    this._green = 0,
    this._blue = 0,
  ]);

  int get red => _red;

  int get blue => _blue;

  int get green => _green;

  int getLuminosity() {
    double luminosity = (red * 0.3) + (green * 0.59) + (blue * 0.11);

    return luminosity.round();
  }

  bool isEqual(RGB color) {
    return (red == color.red) &&
        (green == color.green) &&
        (blue == color._blue);
  }

  void lighten(double percent) {
    this._red += (red * percent).round();
    this._green += (green * percent).round();
    this._blue += (blue * percent).round();
  }

  void darken(double percent) {
    this._red -= (red * percent).round();
    this._green -= (green * percent).round();
    this._blue -= (blue * percent).round();
  }

  RGB toGray() {
    int lum = getLuminosity();

    this._red = lum;
    this._blue = lum;
    this._green = lum;

    return this;
  }

  String decimalToHex(int decimal) {
    int rem;
    String hex = "";
    String hexChar = "0123456789ABCDEF";

    while (decimal > 0) {
      rem = decimal % 16;
      hex = hexChar[rem] + hex;
      decimal = decimal ~/ 16;
    }

    return hex;
  }

  String getColorHex() {
    String sRed = decimalToHex(red);
    String sGreen = decimalToHex(green);
    String sBlue = decimalToHex(blue);

    return ("#" + sRed + sGreen + sBlue);
  }

  RGB currentColor() {
    RGB rgb = new RGB(red, green, blue);
    return rgb;
  }

  // TESTES UNITARIOS
  String printRGB() {
    return "$red, $green, $blue";
  }

  void testDecimalToHex(String goal) {
    print("*** TEST DECIMAL TO HEX ***");
    print("Color HEX: " + getColorHex());
    print("Goal: " + goal);

    print(getColorHex() == goal);
  }

  void testGray(String goal) {
    RGB _gray = toGray();
    String _grayHEX = _gray.getColorHex();

    print("*** TEST GRAY ***");
    print("GRAY COLOR HEX: " + _grayHEX);
    print("Goal: " + goal);

    print(_grayHEX == goal);
  }

  bool unitLighten(String goal, double percent) {
    this.lighten(percent);
    String hex = getColorHex();

    return hex == goal;
  }

  bool unitDarken(String goal, double percent) {
    this.darken(percent);
    String hex = getColorHex();

    return hex == goal;
  }
}
