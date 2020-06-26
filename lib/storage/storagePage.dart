import 'package:flutter/material.dart';

class StoragePage extends StatelessWidget {
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
            title: Text('Storage usage'),
            subtitle: Text('+ Buy more storage, Custom storage..etc'),
            trailing: Icon(Icons.data_usage, color: Colors.lightGreen),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.folder_open),
            title: Text('Filesystem'),
            subtitle: Text(
                'SSH, sFtp, SCP, File browser, Git Pull/Clone to folder, Backup&Restore, FTP users+Homedir'),
          ),
          Divider(color: Colors.red),
          ListTile(
            leading: Icon(Icons.storage),
            title: Text('Custom storage server #1'),
            subtitle: Text('SSD, hadoop..etc.'),
          ),
          Divider(color: Colors.red),
          ListTile(
            leading: Icon(Icons.storage),
            title: Text('MySQL 5.1'),
            subtitle: Text('Database browser, Backup&Restore'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.storage),
            title: Text('MySQL 5.3'),
            subtitle: Text('Database browser, Backup&Restore'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.storage),
            title: Text('PostreSQL'),
            subtitle: Text('Database browser, Backup&Restore'),
            onTap: () {},
          ),
          Divider(color: Colors.red),
          ListTile(
            leading: Icon(Icons.storage),
            title: Text('Custom DB server #1'),
            subtitle: Text('Database browser, Backup&Restore'),
          ),
        ],
      ),
    );
    //
  }
}
