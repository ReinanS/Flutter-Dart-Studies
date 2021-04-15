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

    return luminosidade.toInt();
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
}
