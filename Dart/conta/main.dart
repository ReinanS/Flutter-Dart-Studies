import 'conta.dart';

void main() {
  Conta conta = Conta("Reinan", 99999, "014", 0, "2012-02-27");

  conta.deposita(200);
  conta.saca(50);
  conta.displaySaldo();
}
