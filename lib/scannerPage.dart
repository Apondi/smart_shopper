import 'package:flutter/material.dart';

class Scanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // appBar: new AppBar(title: new Text('Scanner')),
      body: new Container(
        padding: new EdgeInsets.all(30.0),
        child: new Column(
          children: <Widget>[
            new Text('Scanner Page'),
          ],
        ),
      ),
    );
  }

}