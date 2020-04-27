import 'package:flutter/material.dart';
import 'domains/domains.dart';
import 'package:inclust01/storage/storages.dart';

import 'trash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Inclust Admin'),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(text: 'Domains'),
                Tab(text: 'Storage'),
                Tab(text: 'Tools'),
              ],
            ),
          ),
          body: TabBarView(children: [
            DomainList(),
            StorageList(),
            TrashMenu(title: 'Domain list'),
          ]),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.business),
                title: Text('Business'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.school),
                title: Text('School'),
              ),
            ],
          ),
        ),
        //
      ),
    );
  }
}
