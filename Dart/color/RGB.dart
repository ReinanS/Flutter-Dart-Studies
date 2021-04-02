class RGB {
  int _red = 0;
  int _green = 0;
  int _blue = 0;

  RGB(RGB color, int red, int green, int blue) {
    this._red = this._red = color.red;
    this._green = color.green;
    this._blue = color.blue;

    this._red = validaColor(red);
    this._green = validaColor(green);
    this._blue = validaColor(blue);
  }

  int get red {
    return this._red;
  }

  int get green {
    return this._green;
  }

  int get blue {
    return this._blue;
  }

  int validaColor(int color) {
    if (color == 0)
      return 0;
    else if (color > 255) return 255;

    return color;
  }
}
