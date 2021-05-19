class Contato {
  int id;
  String nome;
  String email;
  String imagem;

  Contato(
    this.id,
    this.nome,
    this.email,
    this.imagem,
  );

  Map<String, dynamic> toMap() {
    Map map = <String, dynamic>{
      'id': id,
      'nome': nome,
      'email': email,
      'imagem': imagem,
    };
    return map;
  }

  Contato.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    nome = map['nome'];
    email = map['email'];
    imagem = map['imagem'];
  }
}
