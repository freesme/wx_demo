import 'package:flutter/material.dart';

class DiscoveryChildPage extends StatelessWidget {
  final String title;

  DiscoveryChildPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(title),
      ),
    );
  }
}
