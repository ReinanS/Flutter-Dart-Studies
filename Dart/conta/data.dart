class Data {
  Data({this.dia = 0, this.mes = 0, this.ano = 0});

  int dia;
  int mes;
  int ano;

  String formatada() {
    String dados = "$dia";
    dados += "/$mes";
    dados += "/$ano";

    return dados;
  }
}
