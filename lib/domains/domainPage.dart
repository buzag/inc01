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

class DomainPage extends StatelessWidget {
  const DomainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: TabBar(tabs: [
              Tab(text: 'All domains'),
              Tab(text: 'Remember'),
            ]),
          ),
          body: TabBarView(children: [
            DomainList(),
            Container(
              color: Colors.blueAccent,
              child: Center(
                child: Text(
                  'Settings: restore defaults, add google hosted..etc',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            
            
          ]),
        ),
      ),
    );
  }
}

class DomainList extends StatelessWidget {
  const DomainList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text('+ Add new domain'),
          subtitle: Text(
              'Wizerd: 1reg.hu reg vagy mashol regisztralt domaint iranyitson ide'),
          onTap: () {},
        ),
        Divider(color: Colors.red),
        for (int i = 0; i < domains.length; i++)
          ListTile(
            title: Text(domains[i].domainName + '.' + domains[i].domainTld),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DomainDetails(domain: domains[i]),
                ),
              );
            },
          )
      ],
    );
  }
}

class DomainDetails extends StatelessWidget {
  Domain domain;

  DomainDetails({Key key, @required this.domain}) : super(key: key);

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
              child: Icon(Icons.settings),
            ),
          ]),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('DNS'),
            subtitle: Text('DNS records only, not whois'),
          ),
          ListTile(
            title: Text('Web routes&Workers'),
            subtitle: (Text(
                'Select php,NodeJs,Nginx..etc worker to a webroute and filesystem path')),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WebRouteList(domain: domain),
                ),
              );
            },
          ),
          ListTile(
            title: Text('e-mail'),
            subtitle: Text('email addresses, email queue'),
            onTap: () {},
          ),
          Divider(color: Colors.red),
          ListTile(
            title: Text('Wizards'),
            subtitle: Text('Wordpress autoinstaller'),
            onTap: () {},
          ),
          Divider(color: Colors.red),
          Divider(),
          ListTile(
            title: Text('Storage'),
            subtitle: Text('Link to storage/default folder'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Open console/shell'),
            subtitle: Text('start& open ssh container with 1h timeout'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Backup&Restore'),
            subtitle: Text('Link to Backup&Restore/default folder'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Custom error pages?'),
            subtitle: Text('Csak mint otlet'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Logs?'),
            subtitle: Text('Apache logs: igazabol ez worker-specifikus'),
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
