import 'package:flutter/material.dart';

class TrashMenu extends StatefulWidget {
  TrashMenu({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _TrashMenuState createState() => _TrashMenuState();
}

class _TrashMenuState extends State<TrashMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Text('Devops Tools, GitHook, Slack connect'),
          Text('VPS and Custom workers'),
          Text('Users: ssh/container, root directory'),
          Text('dababase browser: kulso user hogy fer hozza?'),
          for (int i = 0; i < 3; i++) TrashMenuElement(),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (null),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class TrashMenuElement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber[500],
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('Fancy button tesztnek'),
              subtitle: Text('Csak itthagytam picit'),
            ),
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('BUY TICKETS'),
                  onPressed: () {},
                ),
                FlatButton(
                  child: const Text('LISTEN'),
                  onPressed: () {/* ... */},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
