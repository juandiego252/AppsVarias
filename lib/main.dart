import 'package:flutter/material.dart';
import 'package:actividadfinalflutter/simplistic_editor/lib/main.dart' as simplistic_editor;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Examples Menu',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MenuScreen(),
    );
  }
}

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Examples Menu')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text('Simplistic Editor'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => simplistic_editor.MyApp()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}