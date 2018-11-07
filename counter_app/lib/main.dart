import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Hot Reload Demo'),
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
    setState(() => _counter++);
  }

  void _decrementCounter() {
    setState(() => _counter--);
  }

  void _resetCounter() {
    setState(() => _counter = 0);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 50.0),
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.25),
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Image.asset(
                'flutter_logo_1080.png',
                width: 100.0,
              ),
            ),
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              _counter.toString(),
              style: Theme.of(context).textTheme.display1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                  color: Colors.red,
                  child: Text(
                    "Decrement",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: _decrementCounter,
                ),
                RaisedButton(
                  color: Colors.green,
                  child: Text(
                    "Increment",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: _incrementCounter,
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _resetCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.refresh),
      ),
    );
  }
}
