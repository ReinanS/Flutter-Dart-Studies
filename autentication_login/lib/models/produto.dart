import 'dart:convert';

Produto produtoFromJson(String str) => Produto.fromJson(json.decode(str));

String produtoToJson(Produto data) => json.encode(data.toJson());

class Produto {
  Produto({
    this.produtoId,
    this.nome,
    this.descricao,
    this.preco,
    this.ativo,
    this.imagemUrl,
  });

  final int produtoId;
  final String nome;
  final String descricao;
  final double preco;
  final bool ativo;
  final String imagemUrl;

  factory Produto.fromJson(Map<String, dynamic> json) => Produto(
        produtoId: json["produtoId"],
        nome: json["nome"],
        descricao: json["descricao"],
        preco: json["preco"].toDouble(),
        ativo: json["ativo"],
        imagemUrl: json["imagemUrl"],
      );

  Map<String, dynamic> toJson() => {
        "produtoId": produtoId,
        "nome": nome,
        "descricao": descricao,
        "preco": preco,
        "ativo": ativo,
        "imagemUrl": imagemUrl,
      };
}
