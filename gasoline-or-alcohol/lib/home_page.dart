import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController gasolinaController = TextEditingController();
  TextEditingController alcoolController = TextEditingController();

  String _infoText = 'Informe o valor de cada Combustível';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gasolina ou Álcool ?'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {
                _resetaValores();
              })
        ],
      ),
      body: _body(),
    );
  }

  _body() {
    return SingleChildScrollView(
      padding: EdgeInsets.all(32.0),
      child: Form(
        key: _formKey,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            FaIcon(FontAwesomeIcons.gasPump, size: 60.0, color: Colors.blue),
            buildTextFormField("Preço da Gasolina", gasolinaController),
            buildTextFormField("Preço do Álcool", alcoolController),
            buildContainerButton(context),
            buildTextInfo(),
          ],
        ),
      ),
    );
  }

  buildTextFormField(String _label, TextEditingController _controller) {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: _label,
        labelStyle: TextStyle(fontSize: 20.0),
      ),
      style: TextStyle(fontSize: 30.0),
      controller: _controller,
      validator: (value) {
        if (value.isEmpty) {
          return 'Informe o valor !';
        }
        return null;
      },
    );
  }

  buildContainerButton(BuildContext context) {
    return Container(
      height: 50.0,
      child: RaisedButton(
        onPressed: () {
          if (_formKey.currentState.validate()) {
            calcula();
            FocusScope.of(context).requestFocus(new FocusNode());
          }
        },
        child: Text(
          'Calcular',
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
        color: Colors.blue,
      ),
    );
  }

  buildTextInfo() {
    return Text(
      _infoText,
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.black),
    );
  }

  void calcula() {
    setState(() {
      double gasolina = double.parse(gasolinaController.text);
      double alcool = double.parse(alcoolController.text);

      double resultado = (alcool / gasolina);

      if (resultado > 0.70) {
        _infoText =
            "Percentual : (${resultado.toStringAsPrecision(3)})\nVale a pena abastecer com gasolina";
      } else {
        _infoText =
            "Percentual : (${resultado.toStringAsPrecision(3)})\nVale a pena abastecer com Álcool";
      }
    });
  }

  _resetaValores() {
    setState(() {
      gasolinaController.text = '';
      alcoolController.text = '';
      _infoText = 'Informe o valor de cada Combustível';
    });
  }
}
