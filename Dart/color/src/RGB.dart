class RGB {
  int _red = 0;
  int _blue = 0;
  int _green = 0;

  RGB(int red, int green, int blue) {
    this._red = red;
    this._green = green;
    this._blue = blue;
  }

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
}
