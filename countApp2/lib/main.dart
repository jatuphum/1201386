import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Counter App',
      theme: ThemeData(
          primaryColor: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'จำนวนครั้งที่กดไปแล้ว',
              style: Theme.of(context).textTheme.headline3,
            ),
            Text('$_counter', style: Theme.of(context).textTheme.headline4),
            const SizedBox(
              height: 30,
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  _counter++;
                });
              },
              color: Colors.orange,
              //child: Text('กดเพิ่มจำนวน'),
              child: Column(
                children: <Widget>[Icon(Icons.add), Text('กดเพิ่มจำนวน')],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
