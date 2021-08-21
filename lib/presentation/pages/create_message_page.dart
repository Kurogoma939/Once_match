import 'package:flutter/material.dart';

class CreateMessagePage extends StatelessWidget {
  const CreateMessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87.withOpacity(0.9),
      resizeToAvoidBottomInset: true,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: SingleChildScrollView(
            reverse: true,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 30,
                        width: double.infinity,
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.close_rounded,
                            color: Colors.white,
                            size: 36,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.blueAccent,
                        radius: 55,
                        child: CircleAvatar(
                          radius: 52,
                          backgroundImage:
                              AssetImage("assets/images/avatar5.jpeg"),
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Container(
                        width: double.infinity,
                        height: 200,
                        child: Text(
                          'メッセージメッセージメッセージメッセージ\n '
                          '\n '
                          'メッセージメッセージメッセージメッセージ\n '
                          'メッセージメッセージメッセージメッセージ\n '
                          'メッセージメッセージメッセージメッセージ\n '
                          'メッセージメッセージメッセージメッセージ\n '
                          'メッセージメッセージメッセージメッセージ\n '
                          'メッセージメッセージメッセージメッセージメッセージメッセージメッセージメッセージメッセージメッセージ\n ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                          maxLines: 8,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          'コメントを送る',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          decoration: InputDecoration(
                            fillColor: Colors.white,

                            /// Todo : メニューの展開
                            prefixIcon: IconButton(
                              icon: Icon(
                                Icons.menu_rounded,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            ),

                            /// Todo : 送信処理 / 送信と同時にListViewから削除
                            suffixIcon: IconButton(
                              icon: Icon(
                                Icons.send_rounded,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                )),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                  color: Colors.blueAccent,
                                )),
                          ),
                          keyboardType: TextInputType.multiline,
                          maxLines: 3,
                          minLines: 1,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
