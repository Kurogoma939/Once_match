import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeartButton extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final heart = useState<bool>(false);
    return IconButton(
        onPressed: () =>
            (heart.value) ? heart.value = false : heart.value = true,
        icon: (heart.value)
            ? Icon(
                FontAwesomeIcons.solidHeart,
                color: Colors.red,
              )
            : Icon(
                FontAwesomeIcons.heart,
                color: Colors.black54,
              ));
  }
}
