import 'package:flutter/material.dart';

import '../component/discovery_cell.dart';

class BookPage extends StatefulWidget {
  const BookPage({super.key});

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              child: MediaQuery.removePadding(
            removeTop: true,
            context: context,
            child: ListView(
              children: [
                Container(
                  height: 200,
                  color: Colors.cyan,
                  child: Row(),
                ),
                DiscoveryCell('', 'pqdd', 'ss', ''),
                const SizedBox(height: 5),
                DiscoveryCell('', 'pasas', 'ss', ''),
                Row(
                  children: [
                    //左右
                    Container(width: 50, height: 0.5, color: Colors.white),
                    Container(height: 0.5, color: Colors.white10)
                  ],
                ),
                DiscoveryCell('', 'pq', 'ss', ''),
              ],
            ),
          )),
          Container(
            margin: const EdgeInsets.only(top: 60, right: 10),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.photo_camera,
                  size: 35,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
