import 'package:flutter/material.dart';

import 'user_detail_page.dart';

class MessageTab extends StatefulWidget {
  const MessageTab({Key? key}) : super(key: key);

  @override
  _MessageTabState createState() => _MessageTabState();
}

class _MessageTabState extends State<MessageTab> {
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
      body: Container(
        child: ListView.builder(
            itemCount: 15,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(top: 4),
                child: ListTile(
                  leading: GestureDetector(
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/avatar5.jpeg"),
                    ),

                    ///Todo : ユーザー詳細を表示
                    onTap: (/* 引数 */) {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          opaque: false,
                          pageBuilder: (BuildContext context,
                              Animation<double> animation,
                              Animation<double> secondaryAnimation) {
                            return UserDetail(); //遷移先
                          },
                        ),
                      );
                    },
                  ),
                  trailing: SizedBox.shrink(),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ///Todo : 投稿情報をFirestoreから取得
                      ///Todo : 共感 / グッド /　バッド / リプライ のリスト表示（分岐）
                      ///いいねされました。共感されました。バッドされました。
                      ///テキスト内容
                      Text(
                        'アバター5',
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'アバター5にいいねされました。',
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
