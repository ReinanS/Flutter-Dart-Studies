import 'package:flutter/material.dart';
import 'package:list_users/models/userModel.dart';

class DetailPage extends StatelessWidget {
  final User user;

  DetailPage(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.name),
      ),
      body: userDetails(),
    );
  }

  userDetails() {
    return Container(
      padding: EdgeInsets.all(32.0),
      child: ListTile(
        leading: Icon(
          Icons.email,
          color: Colors.blue,
        ),
        title: Text(
          user.email,
          // style: TextStyle(fontWeight: FontWeight.w500),
        ),
        subtitle: Text(user.name),
      ),
    );
  }
}
