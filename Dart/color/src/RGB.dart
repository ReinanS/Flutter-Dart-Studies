class RGB {
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
    double luminosity = (red * 0.3) + (green * 0.59) + (blue * 0.11) / 255;

    return luminosity.toInt();
  }

  bool isEqual(RGB color) {
    return (red == color.red) &&
        (green == color.green) &&
        (blue == color._blue);
  }

  void lighten(double percent) {
    this._red += (red * percent).toInt();
    this._green += (green * percent).toInt();
    this._blue += (blue * percent).toInt();
  }

  void darken(double percent) {
    this._red -= (red * percent).toInt();
    this._green -= (green * percent).toInt();
    this._blue -= (blue * percent).toInt();
  }

  RGB gray() {
    double lumDouble = (red * 0.3) + (green * 0.59) + (blue * 0.11);
    int lum = lumDouble.toInt();

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

  // TESTES UNITARIOS
  void printRGB() {
    print(red);
    print(green);
    print(blue);
  }

  void testDecimalToHex(String goal) {
    print("*** TEST DECIMAL TO HEX ***");
    print("Color HEX: " + getColorHex());
    print("Goal: " + goal);

    print(getColorHex() == goal);
  }

  void testGray(String goal) {
    RGB _gray = gray();
    String _grayHEX = _gray.getColorHex();

    print("*** TEST GRAY ***");
    print("GRAY COLOR: " + _grayHEX);
    print("Goal: " + goal);

    print(_grayHEX == goal);
  }
}
