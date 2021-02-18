import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aula 3",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
      home: buildListView(),
    );
  }

  buildListView() {
    return ListView(
      children: [
        ListTile(
          title: Text('Texto'),
          subtitle: Text('Meu Texto'),
          leading: Icon(Icons.add_location),
          trailing: Icon(Icons.add_shopping_cart),
          selected: true,
          onTap: () {
            print('Tap');
          },
        ),
        ListTile(
          title: Text('Texto'),
          subtitle: Text('Meu Texto'),
          leading: Icon(Icons.add_to_photos),
          trailing: Icon(Icons.add_box),
          enabled: true,
          onLongPress: () {
            print('Long');
          },
        ),
      ],
    );
  }
}
