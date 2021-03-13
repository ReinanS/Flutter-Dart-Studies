class Conta {
  Cliente cliente = Cliente();
  String _titular;
  int _numero;
  String _agencia;
  double _saldo;
  String _dataDeAbertura;

  Conta(this._titular, this._numero, this._agencia, this._saldo,
      this._dataDeAbertura);

  void saca(double valor) {
    if (_saldo > 0) _saldo -= valor;
  }

  void deposita(double valor) {
    if (valor > 0) _saldo += valor;
  }

  double calculaRendimento() {
    return _saldo * 0.1;
  }

  void displaySaldo() {
    print(_saldo);
  }
}

class Cliente {
  String nome;
  String cpf;
}
