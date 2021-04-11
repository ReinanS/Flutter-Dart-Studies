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

  set red(int red) {
    this._red = red;
  }

  int get blue {
    return _blue;
  }

  set blue(int blue) {
    this._blue = blue;
  }

  int get green {
    return _green;
  }

  set green(int green) {
    this._green = green;
  }
}
