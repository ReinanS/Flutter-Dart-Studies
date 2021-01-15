import 'package:flutter/material.dart';

widgetTable() {
  return Container(
    child: Table(
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
