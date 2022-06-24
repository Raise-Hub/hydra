import 'package:flutter/material.dart';
import 'package:hydra/modules/login/login_page.dart';
import 'package:hydra/shared/themes/app_text_styles.dart';

class DrawerNavigation extends StatefulWidget {
  final String title;

  const DrawerNavigation({ Key? key, required this.title }) : super(key: key);

  @override
  State<DrawerNavigation> createState() => _DrawerNavigationState();
}

class _DrawerNavigationState extends State<DrawerNavigation> {
  int _selectedDestination = 0;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(80.0),
            child: Text(
              'HYDRA',
              style: TextStyles.titleHydra,
            ),
          ),
          const Divider(
            height: 1,
            thickness: 1,
          ),
          ListTile(
            leading: const Icon(Icons.accessibility_new),
            title: const Text('Item 1'),
            selected: _selectedDestination == 0,
            onTap: () => selectDestination(0),
          ),
          ListTile(
            leading: const Icon(Icons.account_tree),
            title: const Text('Item 2'),
            selected: _selectedDestination == 1,
            onTap: () => selectDestination(1),
          ),
          ListTile(
            leading: const Icon(Icons.add_alert),
            title: const Text('Item 3'),
            selected: _selectedDestination == 2,
            onTap: () => selectDestination(2),
          ),
          const Divider(
            height: 1,
            thickness: 1,
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Label',
            ),
          ),
          ListTile(
            leading: const Icon(Icons.bookmark),
            title: const Text('Item A'),
            selected: _selectedDestination == 3,
            onTap: () => selectDestination(3),
          ),
          const Divider(
            height: 1,
            thickness: 1,
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Sair.'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage())
              );
            },
          )
        ],
      ),
    );
  }

  void selectDestination(int index) {
    setState(() {
      _selectedDestination = index;
    });
  }
}
