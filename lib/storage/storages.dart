import 'package:flutter/material.dart';

class StorageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Files and Databases'), actions: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.keyboard),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.history),
        ),
      ]),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Browse filesystem'),
            // onTap: () {
            //   Navigator.push(
            //     context,
            //     new MaterialPageRoute(
            //       builder: (context) => DomainSettings(),
            //     ),
            //   );
            // },
          ),
          Divider(),
          ListTile(
            title: Text('Open shell'),
            subtitle: Text('ssh, laravel, special shells...etc'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Git devops'),
            subtitle: Text('ssh, laravel, special shells...etc'),
            onTap: () {},
          ),
          ListTile(
            title: Text('MySQL 5.1'),
            onTap: () {},
          ),
          ListTile(
            title: Text('MySQL 5.3'),
            onTap: () {},
          ),
          ListTile(
            title: Text('PostreSQL'),
            onTap: () {},
          ),
          Divider(color: Colors.red),
          ListTile(
            title: Text('Custom DB server '),
          ),
          ListTile(
            title: Text('Custom storage server'),
            subtitle: Text('SSD, hadoop..etc.'),
          ),
          Divider(color: Colors.red),
          ListTile(
            title: Text('Backup&Restore'),
            onTap: () {},
          ),
        ],
      ),
    );
    //
  }
}
