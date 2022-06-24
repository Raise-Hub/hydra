import 'package:flutter/material.dart';
import 'package:hydra/modules/drawer-navigation/drawer_navigation.dart';
import 'package:hydra/modules/home/home_page.dart';
import 'dart:async';

import 'modules/login/login_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final appTitle = 'HYDRA';
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: const LoginPage(),
    );
  }
}


