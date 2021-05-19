class Contato {
  int id;
  String nome;
  String email;

  Contato(
    this.id,
    this.nome,
    this.email,
  );

  Map<String, dynamic> toMap() {
    Map map = <String, dynamic>{
      'id': id,
      'nome': nome,
      'email': email,
    };
    return map;
  }

  Contato.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    nome = map['nome'];
    email = map['email'];
  }
}
