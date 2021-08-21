import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EachChat extends StatefulWidget {
  const EachChat({Key? key}) : super(key: key);

  @override
  _EachChatState createState() => _EachChatState();
}

class _EachChatState extends State<EachChat> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              'チャット',
              style: TextStyle(color: Colors.black, fontFamily: 'PottaOne'),
            ),
            flexibleSpace: Image(
              image: AssetImage("assets/images/appbar.png"),
              fit: BoxFit.cover,
            ),
            // backgroundColor: Colors.transparent,
          ),
          body: Center(
            child: Text('チャット'),
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white.withOpacity(0.4),
            elevation: 0,

            /// Todo : テーマカラーにする予定
            selectedItemColor: Color(0xFF1e90ff),
            unselectedItemColor: Colors.black38,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.warehouse, size: 24),
                  label: "ホーム"),
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.envelope, size: 28),
                  label: "メッセージ"),
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.penNib, size: 28), label: "書く"),
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.cog, size: 28), label: "設定"),
            ],
            type: BottomNavigationBarType.fixed,
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.navigation),
            backgroundColor: Colors.green,
          ),
        ),
      ],
    );
  }
}

///明日のタスク
///①背景やBNVの継承
///②チャットの交互に出る画面
///メッセージのMessageTile、どこ押してもチャットに飛ぶように修正
