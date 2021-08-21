import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BadButton extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final bad = useState<bool>(false);
    return IconButton(
        onPressed: () => (bad.value) ? bad.value = false : bad.value = true,
        icon: (bad.value)
            ? Icon(
                FontAwesomeIcons.solidThumbsDown,
                color: Colors.red,
              )
            : Icon(
                FontAwesomeIcons.thumbsDown,
                color: Colors.black54,
              ));
  }
}
