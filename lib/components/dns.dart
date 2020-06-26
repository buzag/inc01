import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class Dns extends StatefulWidget {
  @override
  _DnsState createState() => _DnsState();
}

class _DnsState extends State<Dns> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hello Data')),
      body: Text('DATA COMES HERE'),
    );
  }
}

// String url = 'https://inc01.herokuapp.com/v1/graphql';
// HasuraConnect hasuraConnect = HasuraConnect(url);

// String docQuery = """
//   query DNSQuery {
//   dns {
//     domain
//     subdomain
//     record_type
//     TTL
//     address
//     info
//   }
// }
// """;

// List<Domain> domains = [
//   // Domain({index: 0, domainName: 'inclust', domainTld: 'com', domainactive: true})
//   Domain(0, 'inclust', 'com', true),
//   Domain(1, 'inepex', 'com', true),
//   Domain(2, 'szekhelyszolgalat', 'net', true),
//   Domain(3, 'polgarhaz', 'hu', true),
//   Domain(4, 'punc', 'info', false),
//   Domain(5, 'komashi', 'com', false),
//   Domain(6, 'nyom', 'io', false),
// ];

// final DNSType<String> = [];

// class DNSType {

// }

// class DNS {
//   final int index;
//   final String domainName;
//   final String domainTld;
//   final bool domainActive;

//   Domain(this.index, this.domainName, this.domainTld, this.domainActive);
// }
