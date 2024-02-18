import 'package:flutter/material.dart';
import 'package:wx_demo/page/chat_page.dart';
import 'package:wx_demo/page/person_page.dart';

import 'discovery/discovery_page.dart';
import 'friend_page.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<StatefulWidget> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _currentIndex = 2;

  final List<Widget> _pages = [
    ChatPage(),
    const FriendPage(),
    const DiscoveryPage(),
    const BookPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.green,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'chat'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'friend'),
          BottomNavigationBarItem(
              icon: Icon(Icons.history), label: 'discovery'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'person'),
        ],
      ),
      body: _pages[_currentIndex],
    );
  }
}
