import 'package:flutter/material.dart';
import 'dart:math';
import 'domainPage.dart';


class WebRouteList extends StatelessWidget {
  Domain domain;

  WebRouteList({Key key, @required this.domain}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(domain.domainName + '.' + domain.domainTld),
          actions: <Widget>[
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RouteAdd(domain: domain),
                        ),
                      );
                    },
                    child: Icon(Icons.add))),
          ]),
      body: ListView(
        children: <Widget>[
          for (int i = 0; i < 25; i++) RouteListElement(domain: domain),
        ],
      ),
    );
    //
  }
}

class RouteListElement extends StatelessWidget {
  Domain domain;
  RouteListElement({Key key, @required this.domain}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      key: ValueKey(Random().nextInt(100)),
      leading: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.data_usage,
            color: Colors.lightGreen,
          ),
        ],
      ),
      title: RichText(
        text: TextSpan(
          style: DefaultTextStyle.of(context).style,
          children: <TextSpan>[
            TextSpan(
                text: "subdomain",
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
              text: ('.' + domain.domainName + '.' + domain.domainTld),
              style: TextStyle(fontStyle: FontStyle.italic, color: Colors.grey),
            ),
          ],
        ),
      ),
      subtitle: Text('/datastore/user/details/asdg'),
      trailing: Icon(
        Icons.drag_handle,
      ),
    );
  }
}

class RouteAdd extends StatelessWidget {
  Domain domain;

  RouteAdd({Key key, @required this.domain}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Add new route: '),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            Text('Set up your web routes here. \nExample:'),
            Text(
                'URL http://subdomain.yourdomain.com/yoursuburl ->\nShould be serverd from /youStorageFoler/ ->\nUsing worker: NodeJS'),
            Divider(color: Colors.red),
            TextField(
              decoration: InputDecoration(
                labelText: 'subdomain.',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(domain.domainName + '.' + domain.domainTld),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'url',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('server requests from'),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'local path',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('using the engine'),
            ),
            DropdownButtonFormField<String>(
              items: ["A", "B", "C"]
                  .map((label) => DropdownMenuItem(
                        child: Text(label),
                        value: label,
                      ))
                  .toList(),
              decoration: InputDecoration(
                labelText: 'Worker: php 7, nginx, NodeJS, PrivateWorker',
              ),
              onChanged: (null),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ButtonTheme(
                minWidth: double.infinity,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  color: Colors.red,
                  child: Icon(Icons.save),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
