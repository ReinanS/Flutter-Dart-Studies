import 'package:flutter/material.dart';

class ProjectList extends StatefulWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Table(
        border: TableBorder.all(),
        columnWidths: {
          0: FlexColumnWidth(.40),
        },
        children: [
          TableRow(children: [
            Text(
              'Projeto',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text(
              'Nome',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ]),
        ],
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
