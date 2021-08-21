import 'package:flutter/material.dart';

class UserDetail extends StatelessWidget {
  const UserDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.7),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                child: IconButton(
                  icon: const Icon(Icons.close_rounded),
                  iconSize: 36,
                  color: Colors.white,
                  alignment: Alignment.centerRight,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 24),
                      child: CircleAvatar(
                        radius: 46,
                        backgroundColor: Colors.blueAccent,

                        /// Todo : Firestorageから取得
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/avatar4.jpeg"),
                          radius: 42,
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          //ラベル
                          Text(
                            'ユーザー名',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),

                          /// Todo : Firestoreから取得
                          Text(
                            'アバター4',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 40),
                        //ラベル
                        child: Text(
                          'ユーザーID',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),

                      /// Todo : Firestoreから取得
                      Text(
                        'MBI82S4GB13',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 40),
                        //ラベル
                        child: Text(
                          '性別',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),

                      /// Todo : Firestoreから取得
                      Text(
                        '男性',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 40),
                        //ラベル
                        child: Text(
                          'エリア',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),

                      /// Todo : Firestoreから取得
                      Text(
                        '長野県',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 40),
                        //ラベル
                        child: Text(
                          '自己紹介',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),

                      /// Todo : Firestoreから取得
                      Flexible(
                        child: Text(
                          '初めまして。大学生です。'
                          '話し相手を探しています。',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
