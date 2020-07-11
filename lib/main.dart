import 'package:flutter/material.dart';
import 'next_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  String text = '次へ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ハンズオン'),
        actions: <Widget>[
          Icon(Icons.add),
          Icon(Icons.share)
        ],
      ),
      body: Center(
        child: RaisedButton(
            child: Text(text),
            onPressed: () async{
              // ここに押したら反応するコードをかく
              // 画面遷移のコード
              final result = await Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NextPage('kentarou'),
                ),
              );
              // 参考:https://www.it-swarm.dev/ja/dart/flutter%E3%81%AE%E7%94%BB%E9%9D%A2%E9%96%93%E3%81%A7%E3%83%87%E3%83%BC%E3%82%BF%E3%82%92%E6%B8%A1%E3%81%99/808029878/
              setState(() {
                text = result;
              });
            },
        ),
      ),
    );
  }
}
