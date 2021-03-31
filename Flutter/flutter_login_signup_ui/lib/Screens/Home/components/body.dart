import 'package:flutter/material.dart';
import 'package:flutter_login_signup_ui/models/produto.dart';
import 'package:flutter_login_signup_ui/services/produtos_api.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Future<List<Produto>> produtos = ProdutosAPI.fetchProdutos();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: FutureBuilder(
        future: produtos,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text("Erro ao acessar os dados"));
          }

          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }

          List<Produto> produtos = snapshot.data;

          print(produtos[0].nome);

          return _listView(produtos);
        },
      ),
    );
  }

  _listView(produtos) {
    return Container(
      padding: EdgeInsets.all(20),
      child: ListView.builder(
        itemCount: produtos != null ? produtos.length : 0,
        itemBuilder: (context, index) {
          Produto p = produtos[index];

          return Card(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Image.network(p.imagemUrl, width: 150),
              ),
              Text(
                p.nome,
                style: TextStyle(fontSize: 20),
              ),
              Text(
                p.descricao,
                style: TextStyle(fontSize: 20),
              ),
              Text(
                p.preco.toString(),
                style: TextStyle(fontSize: 20),
              ),
            ],
          ));
        },
      ),
    );
  }
}
