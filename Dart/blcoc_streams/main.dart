import 'dart:async';

void main() {
  estreamTransformer();
}

void estream() {
  // cria o stream
  final ctrl = StreamController();

  // adiciona um listener ao stream que imprime os dados
  final sub = ctrl.stream.listen((dados) => print(dados));

  // adiciona dados que irão fluir para o stream
  ctrl.sink.add("Santos");
  ctrl.sink.add(20221);
  ctrl.sink.add({'nome': 'Reinan', 'idade': 21});

  // fecha e libera o stream
  ctrl.close();
}

void estreamTransformer() {
  final ctrl = StreamController<int>.broadcast();

  final sub = ctrl.stream
      .where((valor) => (valor % 2 == 0))
      .listen((valor) => print(valor));

  for (int i = 1; i < 11; i++) ctrl.sink.add(i);

  ctrl.close();
}
