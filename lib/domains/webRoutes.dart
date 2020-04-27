import 'package:flutter/material.dart';
import 'dart:math';

class WebRouteList extends StatelessWidget {
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
          title: Text('domainname > routes'),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.settings),
            ),
          ]),
      body: ListView(
        children: <Widget>[
          for (int i = 0; i < 25; i++) RouteListElement(),
        ],
      ),
    );
    //
  }
}

class RouteListElement extends StatelessWidget {
  const RouteListElement({
    Key key,
  }) : super(key: key);

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
      // Icon(Icons.wb_sunny),
      title: RichText(
        text: TextSpan(
          style: DefaultTextStyle.of(context).style,
          children: <TextSpan>[
            TextSpan(
                text: 'testsite-beta',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
              text: '.szekhelyszolgalat.net',
              style: TextStyle(fontStyle: FontStyle.italic, color: Colors.grey),
            ),
          ],
        ),
      ),
      // Text('testsite-beta.szekhelyszolgalat.net'),
      subtitle: Text('/datastore/user/details/asdg'),
      trailing: Icon(
        Icons.drag_handle,
      ),
    );
  }
}
