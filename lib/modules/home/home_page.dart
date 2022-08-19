import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:hydra/modules/home/pages/feed_page/feed_page.dart';

import '../drawer-navigation/drawer_navigation.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  int index = 2;

  final screens = [
    const FeedPage(),
    null,
    null,
    null,
    null,
  ];

  @override
  Widget build(BuildContext context) { 
    final items = <Widget>[
      const Icon(Icons.list, size: 30),
      const Icon(Icons.confirmation_num_outlined, size: 30),
      const Icon(Icons.map_outlined, size: 30),
      const Icon(Icons.add_circle_outline, size: 30),
      const Icon(Icons.account_circle_outlined, size: 30),
    ];
    
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const DrawerNavigation(title: '',),
      body: screens[index],
      bottomNavigationBar: CurvedNavigationBar(
        key: navigationKey,
        backgroundColor: Colors.transparent,
        color: Color.fromARGB(255, 168, 195, 209),
        buttonBackgroundColor: Colors.grey,
        height: 60,
        index: index,
        items: items,
        onTap: (index) => setState(() => this.index = index),
      ),
      // floatingActionButton: FloatingActionButton(
      //   // backgroundColor: Colors.gr,
      //   child: const Icon(Icons.chat_bubble_rounded),
      //   onPressed: () {},
      // ),
    );
  }
}