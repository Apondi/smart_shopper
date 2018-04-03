import 'package:flutter/material.dart';
import './scannerPage.dart' as scannerPage;

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Smart Shopper',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // appBar: new AppBar(
      //   title: new Text(widget.title),
      // ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('Scan product barcode to view details and add to cart'),
            new Padding(padding: new EdgeInsets.all(10.0)),
            new RaisedButton(
              child: new Text('SCAN BARCODE', style: 
              new TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              color: Colors.blue,
              onPressed: () {
                Navigator.push(context, new MaterialPageRoute(
                  builder: (_) => new scannerPage.Scanner(),
                ));
              }, // this should open the scanner activity
            )
          ],
        ),
        // child: new Text('Hello World'),
      ),
    );
  }

  
}