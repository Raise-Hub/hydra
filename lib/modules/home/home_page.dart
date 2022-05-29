import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../drawer-navigation/drawer_navigation.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int index = 2; 
    
    final items = <Widget>[
      const Icon(Icons.home, size: 30),
      const Icon(Icons.search, size: 30),
      const Icon(Icons.favorite, size: 30),
      const Icon(Icons.settings, size: 30),
      const Icon(Icons.person, size: 30),
    ];
    
    return Scaffold(
      backgroundColor: Colors.grey,
      drawer: const DrawerNavigation(title: '',),
      body: const Center(
        child: Text(
          'Teste trocar paginas de acordo com os icones',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        height: 60,
        index: index,
        items: items,
      )
    );
  }
}