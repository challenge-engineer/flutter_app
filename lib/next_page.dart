import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  NextPage(this.name);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hands-on！'),
        actions: <Widget>[
          Icon(Icons.add),
          Icon(Icons.share)
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(name),
          Center(
            child: RaisedButton(
              child: Text('戻る'),
              onPressed: () {
              Navigator.pop(context, 'KBOYさん！');
              },
            ),
          ),
        ],
      ),
    );
  }
}