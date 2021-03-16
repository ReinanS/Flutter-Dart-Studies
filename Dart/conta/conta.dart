class Conta {
  Cliente _titular = Cliente();
  int _numero;
  String _agencia;
  double _saldo;
  String _dataDeAbertura;

  Conta(this._titular, this._numero, this._agencia, this._saldo,
      this._dataDeAbertura);

  bool saca(double valor) {
    if (_saldo < valor)
      return false;
    else {
      _saldo -= valor;
      return false;
    }
  }

  void deposita(double valor) {
    if (valor > 0) _saldo += valor;
  }

  double calculaRendimento() {
    return _saldo * 0.1;
  }

  bool transferePara(Conta destino, double valor) {
    bool retirou = this.saca(valor);
    if (retirou == false)
      return false;
    else {
      destino.deposita(valor);
      return true;
    }
  }

  String recuperaDadosParaImpressao() {
    String dados = "Titular: " + _titular.nome;
    dados += "\nNúmero: $_numero";
    dados += "\nAgência: $_agencia";
    dados += "\nData de Abertura: $_dataDeAbertura";
    dados += "\nSaldo atual: $_saldo";
    dados += "\nRendimento Mensal: ${calculaRendimento()}";

    return dados;
  }
}

class Cliente {
  Cliente({this.nome = '', this.sobrenome = '', this.cpf = ''});

  String nome;
  String sobrenome;
  String cpf;
}
