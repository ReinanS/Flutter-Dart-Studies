import 'fibonacci.dart';

void main() {
  Fibonacci fibonacci = Fibonacci();

  for (int i = 0; i < 6; i++) {
    int result = fibonacci.calcularFibonacci(i);
    print(result);
  }
}
