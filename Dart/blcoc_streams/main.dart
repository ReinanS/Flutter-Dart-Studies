import 'dart:async';

void main() {
  exemplo1();
}

void exemplo1() {
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

void exemplo2() {}
