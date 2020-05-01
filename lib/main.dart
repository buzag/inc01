import 'package:flutter/material.dart';
import 'servers/serverPage.dart';
import 'domains/domainPage.dart';
import 'storage/storagePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedTabIndex = 0;

  List _pages = [
    DomainPage(),
    StoragePage(),
    ServerPage(),
    ListView(
      children: <Widget>[
        ListTile(
          title: Text('Open shell'),
          subtitle: Text('ssh, laravel, special shells...etc'),
          onTap: () {},
        ),
        Divider(),
        ListTile(
          title: Text('DevOps pipeline tools'),
          subtitle: Text(
              'Place script on storage, launch container, mount script and storage: Webhook script: git pull, compile/build, copy'),
          onTap: () {},
        ),
        Text(
            "Tools:\n- Console, DB Explorer\n- User manager\n\nDevOps:\n- crontab\n- git"),
      ],
    ),
    Center(child: Text("Account\nPayment, helloka")),
  ];

  _changeIndex(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inclust Admin',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        canvasColor: Colors.white,
      ),
      home: Scaffold(
        // body: DomainList(),
        body: _pages[_selectedTabIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedTabIndex,
          onTap: _changeIndex,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.language), title: Text('Domains')),
            BottomNavigationBarItem(
                icon: Icon(Icons.folder), title: Text('Storage')),
            BottomNavigationBarItem(
                icon: Icon(Icons.developer_board), title: Text('Servers')),
            BottomNavigationBarItem(
                icon: Icon(Icons.build), title: Text('Tools')),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box), title: Text('Account')),
          ],
        ),
      ),
    );
  }
}

// DefaultTabController(
//         length: 3,
//         child: Scaffold(
//           appBar: AppBar(
//             title: Text('Inclust Admin'),
//             bottom: TabBar(
//               tabs: <Widget>[
//                 Tab(text: 'Domains'),
//                 Tab(text: 'Storage'),
//                 Tab(text: 'Tools'),
//               ],
//             ),
//           ),
//           drawer: Drawer(),
//           body: TabBarView(children: [
//             DomainList(),
//             StorageList(),
//             TrashMenu(title: 'Domain list'),
//           ]),
//         ),
//       ),
