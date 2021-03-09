import 'package:flutter/material.dart';
import 'contact.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contact List',
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
  @override
  Widget build(BuildContext context) {
    // List<Widget> textWidgets = [];
    // for (var i = 0; i < 10; i++) {
    //   var widget = Text(
    //     '$i',
    //     style: Theme.of(context).textTheme.headline3,
    //   );
    //   textWidgets.add(widget);
    // }
    List<Contact> contactList = [
      Contact('Jatuphum', '0936526145', 'assets/images/1.jfif'),
      Contact('Juanchaiyaphum', '0011223344', 'assets/images/2.jfif')
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('My Contact List'),
      ),
      body: ListView.builder(
        itemCount: contactList.length,
        itemBuilder: (BuildContext context, int index) {
          Contact contact = contactList[index];
          return ListTile(
            leading: Image.asset(contact.photo),
            title: Text(contact.name),
            subtitle: Text(contact.phoneNumber),
            onTap: () {
              launch('tel:${contact.phoneNumber}');
            },
          );
        },
      ),
    );
  }
}
