import 'package:flutter/material.dart';
import 'package:wx_demo/component/discovery_cell.dart';

class DiscoveryPage extends StatefulWidget {
  const DiscoveryPage({super.key});

  @override
  State<DiscoveryPage> createState() => _DiscoveryPageState();
}

class _DiscoveryPageState extends State<DiscoveryPage> {
  final Color _themColor = Color.fromRGBO(220, 220, 220, 1.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: _themColor,
          title: const Text('DISCOVERY'),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Container(
          height: 800,
          color: Colors.black26,
          child: ListView(
            children: [
              DiscoveryCell('','pqdd','ss',''),
              const SizedBox(height: 5),
              DiscoveryCell('','pasas','ss',''),
              Row(
                children: [
                  //左右
                  Container(width: 50,height: 0.5,color: Colors.white),
                  Container(height: 0.5,color: Colors.white10)
                ],
              ),
              DiscoveryCell('','pq','ss',''),
            ],
          ),
        )
    );
  }
}
