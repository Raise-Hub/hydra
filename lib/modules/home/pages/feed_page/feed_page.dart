import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hydra/modules/home/pages/feed_page/search_box.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({ Key? key }) : super(key: key);

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  bool _customTileExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 50),
        ),
        ExpansionTile(
          title: Text('ExpansionTile 3'),
          subtitle: Text('Leading expansion arrow icon'),
          controlAffinity: ListTileControlAffinity.leading,
          children: <Widget>[
            ListTile(title: Text('This is tile number 3')),
          ],
        ),
      ],
    );
  }
}