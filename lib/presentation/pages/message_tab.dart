import 'package:flutter/material.dart';

import '../widgets/MessageTile.dart';

class MessageTab extends StatefulWidget {
  const MessageTab({Key? key}) : super(key: key);

  @override
  _MessageTabState createState() => _MessageTabState();
}

class _MessageTabState extends State<MessageTab> {
  List<Color> colorList = [Colors.cyan, Colors.deepOrange, Colors.indigo];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.1),
      appBar: AppBar(
        title: Text(
          'メッセージ',
          style: TextStyle(color: Colors.black, fontFamily: 'PottaOne'),
        ),
        flexibleSpace: Image(
          image: AssetImage("assets/images/appbar.png"),
          fit: BoxFit.cover,
        ),
        // backgroundColor: Colors.transparent,
      ),
      body: MessageTile(),
    );
  }
}
