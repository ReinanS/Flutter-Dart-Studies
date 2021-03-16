import 'conta.dart';

void main() {
  Cliente titular = Cliente(nome: "Hugo");
  Conta conta = Conta(titular, 123, "45678-9", 0, "04/06/2015");

  conta.deposita(200);
  conta.recuperaDadosParaImpressao();
}
