class RGB {
  int _red;
  int _green;
  int _blue;

  RGB([
    this._red = 0,
    this._green = 0,
    this._blue = 0,
  ]);

  int get red {
    return _red;
  }

  int get blue {
    return _blue;
  }

  int get green {
    return _green;
  }

  int getLuminosidade() {
    double luminosidade = (red * 0.3) + (green * 0.59) + (blue * 0.11) / 255;

    return luminosidade.toInt();
  }

  bool isEqual(RGB color) {
    return (red == color.red) &&
        (green == color.green) &&
        (blue == color._blue);
  }
}
