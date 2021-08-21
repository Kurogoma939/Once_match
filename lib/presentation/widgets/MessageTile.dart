import 'package:flutter/material.dart';

import '../pages/each_chat.dart';
import '../pages/user_detail_page.dart';

///MessageのListTile
///扱うデータが違うからTimeLineTileと別で管理
class MessageTile extends StatefulWidget {
  const MessageTile({Key? key}) : super(key: key);

  @override
  _MessageTileState createState() => _MessageTileState();
}

class _MessageTileState extends State<MessageTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                title: GestureDetector(
                  child: Column(
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
                  onTap: (/* 引数 */) {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        opaque: false,
                        pageBuilder: (BuildContext context,
                            Animation<double> animation,
                            Animation<double> secondaryAnimation) {
                          return EachChat(); //遷移先
                        },
                      ),
                    );
                  },
                ),
              ),
            );
          }),
    );
  }
}
