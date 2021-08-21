import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:match_once/presentation/pages/create_message_page.dart';

class ChatButton extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.push(
              context,
              PageRouteBuilder(
                  opaque: false,
                  pageBuilder: (BuildContext context,
                      Animation<double> animation,
                      Animation<double> secondaryAnimation) {
                    return CreateMessagePage(); //遷移先
                  }));
        },
        icon: Icon(FontAwesomeIcons.commentDots));
  }
}
