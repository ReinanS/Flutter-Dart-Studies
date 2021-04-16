import 'RGB.dart';

void main() {
  RGB rgb = RGB(37, 150, 190);

  print(rgb.red);
  print(rgb.green);
  print(rgb.blue);

  rgb.gray();
  print(rgb.red);
  print(rgb.green);
  print(rgb.blue);
}
