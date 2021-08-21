import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FavoriteButton extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final favorite = useState<bool>(false);
    return IconButton(
        onPressed: () =>
            (favorite.value) ? favorite.value = false : favorite.value = true,
        icon: (favorite.value)
            ? Icon(
                FontAwesomeIcons.solidThumbsUp,
                color: Colors.blueAccent,
              )
            : Icon(
                FontAwesomeIcons.thumbsUp,
                color: Colors.black54,
              ));
  }
}
