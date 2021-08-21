import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:match_once/presentation/widgets/BadButton.dart';
import 'package:match_once/presentation/widgets/ChatButton.dart';
import 'package:match_once/presentation/widgets/FavoriteButton.dart';

import '../pages/user_detail_page.dart';
import '../widgets/HeartButton.dart';

///MessageのListTile
///扱うデータが違うからMessageTileと別で管理
class TimeLineTile extends StatefulWidget {
  const TimeLineTile({Key? key}) : super(key: key);

  @override
  _TimeLineTileState createState() => _TimeLineTileState();
}

class _TimeLineTileState extends State<TimeLineTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(top: 4),
            child: ExpansionTileCard(
              baseColor: Colors.white.withOpacity(0.1),
              shadowColor: Colors.white.withOpacity(0.1),
              expandedColor: Colors.white.withOpacity(0.1),
              expandedTextColor: Colors.black,
              leading: GestureDetector(
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/avatar1.jpeg"),
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

                ///Todo : ロジックは別で切り出し。IconSwitchRepositoryとかで
                children: [
                  ///Todo : 投稿情報をFirestoreから取得
                  Text(
                    'アバター1',
                    textAlign: TextAlign.left,
                  ),

                  ///Todo : タップしたら全画面表示させる
                  Text(
                    '今日もいい天気だな。最近涼しくなってきたけどどうなんだろう。',
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              children: <Widget>[
                ButtonBar(
                  alignment: MainAxisAlignment.spaceAround,
                  buttonHeight: 52.0,
                  buttonMinWidth: 90.0,

                  /// Todo : それぞれ個別ページへ遷移
                  children: <Widget>[
                    ChatButton(),
                    HeartButton(),
                    FavoriteButton(),
                    BadButton(),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
