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

  int getLuminosidade() {
    double luminosidade = (red * 0.3) + (green * 0.59) + (blue * 0.11) / 255;

    return luminosidade as int;
  }

  bool isEqual(RGB color) {
    return (red == color.red) &&
        (green == color.green) &&
        (blue == color._blue);
  }

  void lighten(double percent) {
    this._red -= (red * percent) as int;
    this._green -= (green * percent) as int;
    this._blue -= (blue * percent) as int;
  }
}
