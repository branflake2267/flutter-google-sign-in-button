import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    const textStyle = const TextStyle(
      fontFamily: 'Roboto',
      color: const Color.fromRGBO(68, 68, 76, .8),
    );

    var image = new Image.asset(
      'resources/google_signin_buttons/logo_googleg.png',
      fit: BoxFit.contain,
    );

    var buttonText = const Text(
      "Sign in with Google",
      style: textStyle,
    );

    var paddingText = new Padding(
      child: buttonText,
      padding: new EdgeInsets.only(left: 24.0),
    );

    var buttonRow = new Wrap(
      children: <Widget>[
        image,
        paddingText,
      ],
    );

    var signInButton = new RaisedButton(
        color: Colors.white,
        child: buttonRow,
        onPressed: () {}
    );

    Center center = new Center(
      child: signInButton,
    );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Test Button"),
      ),
      body: center,
    );
  }
}
