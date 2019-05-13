import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Don\'t touch this',
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Stack(
        children: <Widget>[
          GestureDetector(onTap: () {
            _showDialog();
          }),
          Center(
            child: Container(
              child: RaisedButton(
                child: Text('No me puedes hacer click!'),
                color: Colors.green,
                textColor: Colors.white,
                onPressed: () {
                },
              ),
            ),
          ),
        ],
      ),
    ));
  }

  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text(':)'),
          content: new Text('Quiero mi premio'),
          actions: <Widget>[
            new FlatButton(
              child: new Text("bye"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
