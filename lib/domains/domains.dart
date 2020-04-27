import 'package:flutter/material.dart';
import 'webRoutes.dart';

List<Domain> domains = [
  // Domain({index: 0, domainName: 'inclust', domainTld: 'com', domainactive: true})
  Domain(0, 'inclust', 'com', true),
  Domain(1, 'inepex', 'com', true),
  Domain(2, 'szekhelyszolgalat', 'net', true),
  Domain(3, 'polgarhaz', 'hu', true),
  Domain(4, 'punc', 'info', false),
  Domain(5, 'komashi', 'com', false),
  Domain(6, 'nyom', 'io', false),
];

class Domain {
  final int index;
  final String domainName;
  final String domainTld;
  final bool domainActive;

  Domain(this.index, this.domainName, this.domainTld, this.domainActive);
}

class DomainList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Domains'), actions: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.call_to_action),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.history),
        ),
      ]),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Action menübe'),
            subtitle: Text('Add domain, Mailqueue, Logs, '),
            onTap: () {},
          ),
          Divider(color: Colors.red),
          for (int i = 0; i < domains.length; i++)
            ListTile(
              title: Text(domains[i].domainName + '.' + domains[i].domainTld),
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (context) => DomainSettings(),
                  ),
                );
              },
            )
        ],
      ),
    );
  }
}

class DomainSettings extends StatelessWidget {
  const DomainSettings({Key key}) : super(key: key);

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
          title: Text('domainname'),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.settings),
            ),
          ]),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('DNS'),
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(
                  builder: (context) => DomainSettings(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Web routes&Workers'),
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(
                  builder: (context) => WebRouteList(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('e-mail'),
            onTap: () {},
          ),
          Divider(color: Colors.red),
          ListTile(
            title: Text('Wizards'),
            subtitle: Text('Wordpress autoinstaller'),
            onTap: () {},
          ),
          Divider(color: Colors.red),
          ListTile(
            title: Text('e-mail queue'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Custom error pages?'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Logs'),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            title: Text('Backup&Restore'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Storage'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Open console/shell'),
            onTap: () {},
          ),
          Divider(color: Colors.red),
          ListTile(
            title: Text('Verify domain'),
            onTap: () {},
          ),
          ListTile(
            title:
                Text('Delete, Move..etc', style: TextStyle(color: Colors.red)),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
