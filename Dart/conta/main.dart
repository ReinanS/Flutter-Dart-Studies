import 'cliente.dart';
import 'conta.dart';
import 'data.dart';

void main() {
  Cliente titular = Cliente(nome: "Hugo");
  Data data = Data(dia: 22, mes: 06, ano: 1999);
  Conta conta = Conta(titular, 123, "45678-9", 0, data);

  conta.deposita(200);
  print(conta.recuperaDadosParaImpressao());
}
