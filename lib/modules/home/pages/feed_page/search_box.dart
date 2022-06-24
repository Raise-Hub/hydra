import 'package:flutter/material.dart';

class SearchBox extends StatefulWidget {
    const SearchBox({ Key? key }) : super(key: key);
  
    @override
    State<SearchBox> createState() => _SearchBoxState();
  }
  
  class _SearchBoxState extends State<SearchBox> {
    @override
    Widget build(BuildContext context) {
      return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top + 10, left: 20, right: 20 ),
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 0,
          ),
          decoration: BoxDecoration(
            color: Colors.blueGrey.withOpacity(0.7),
            borderRadius: BorderRadius.circular(20)
          ),
          child: const TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              icon: Icon(Icons.search),
              hintText: 'Pesquisar',
              hintStyle: TextStyle(color: Colors.white)
            ),
          ),
        ),
      ],
    );
    }
  }