import 'package:flutter/material.dart';

List<Server> servers = [
  // Domain({index: 0, domainName: 'inclust', domainTld: 'com', domainactive: true})
  Server(
      0, '87.229.101.156', 'main.polgarhaz.hu', 'this is a sample description'),
  Server(1, '87.229.101.160', 'router.myservice.com',
      'this is a sample description'),
  Server(2, '87.229.101.104', 'beta-04.polgarhaz.hu',
      'this is a sample description'),
  Server(
      3, '87.229.101.105', 'test.inclust.com', 'this is a sample description'),
  Server(
      4, '87.229.101.170', 'srv6.inclust.com', 'this is a sample description'),
  Server(
      5, '87.229.101.245', 'prod.inepex.com', 'this is a sample description'),
  Server(
      6, '87.229.101.37', 'another.punc.info', 'this is a sample description'),
];

class Server {
  final int index;
  final String ip;
  final String reverseDNS;
  final String descripton;

  Server(this.index, this.ip, this.reverseDNS, this.descripton);
}

class ServerPage extends StatefulWidget {
  ServerPage({Key key}) : super(key: key);

  @override
  _ServerPageState createState() => _ServerPageState();
}

class _ServerPageState extends State<ServerPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: TabBar(tabs: [
              Tab(icon: Icon(Icons.cloud), text: 'VPS'),
              Tab(icon: Icon(Icons.computer), text: 'Servers'),
              Tab(icon: Icon(Icons.question_answer), text: 'Containers'),
              Tab(icon: Icon(Icons.question_answer), text: 'Workers')
            ]),
          ),
          body: TabBarView(children: [
            VPSList(),
            ServerList(),
            Container(
              color: Colors.blueAccent,
              child: Center(
                child: Text(
                  'List of you running and available containers:\n\nTemporary container for build or ssh, set timer\n\nupgrade for more simultanous containers\n\n\nOnly internal IP / container and one dynamic port for login',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              color: Colors.blueAccent,
              child: Center(
                child: Text(
                  'List of you default and custom workers',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ]),
        ));
  }
}

class ServerList extends StatelessWidget {
  const ServerList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text('+ New server'),
          onTap: () {},
        ),
        Divider(color: Colors.red),
        for (int i = 0; i < servers.length; i++)
          ListTile(
            title: Text(servers[i].ip),
            subtitle: (Text(servers[i].reverseDNS)),
            onTap: () {},
          )
      ],
    );
  }
}

class VPSList extends StatelessWidget {
  const VPSList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text('+ New VPS'),
          onTap: () {},
        ),
        Divider(color: Colors.red),
        for (int i = 0; i < servers.length; i++)
          ListTile(
            title: Text(servers[i].ip),
            subtitle: (Text(servers[i].reverseDNS)),
            onTap: () {},
          )
      ],
    );
  }
}
