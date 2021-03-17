class Fibonacci {
  Fibonacci();

  int n = 1;

  int calcularFibonacci(int n) {
    return (n == 1 || n == 0)
        ? 1
        : calcularFibonacci(n - 1) + calcularFibonacci(n - 2);
  }
}
