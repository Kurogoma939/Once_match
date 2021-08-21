import 'package:flutter/material.dart';

import '../widgets/TimeLineTile.dart';

class TimeLineTab extends StatefulWidget {
  TimeLineTab({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _TimeLineTabState createState() => _TimeLineTabState();
}

class _TimeLineTabState extends State<TimeLineTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.1),
      appBar: AppBar(
        title: Text(
          'タイムライン',
          style: TextStyle(color: Colors.black, fontFamily: 'PottaOne'),
        ),
        flexibleSpace: Image(
          image: AssetImage("assets/images/appbar.png"),
          fit: BoxFit.cover,
        ),
        // backgroundColor: Colors.transparent,
      ),
      body: TimeLineTile(),
    );
  }
}
