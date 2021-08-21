import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'presentation/pages/message_tab.dart';
import 'presentation/pages/post_tab.dart';
import 'presentation/pages/setting_tab.dart';
import 'presentation/pages/time_line_tab.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  late PageController _pageController;

  static List<Widget> _pageList = [
    TimeLineTab(),
    MessageTab(),
    PostTab(),
    SettingTab(),
  ];

  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: _selectedIndex,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Once App',
      home: Stack(
        children: <Widget>[
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
            backgroundColor: Colors.transparent,
            body: PageView(
              controller: _pageController,
              onPageChanged: _onPageChanged,
              children: _pageList,
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
                      icon: Icon(FontAwesomeIcons.penNib, size: 28),
                      label: "書く"),
                  BottomNavigationBarItem(
                      icon: Icon(FontAwesomeIcons.cog, size: 28), label: "設定"),
                ],
                type: BottomNavigationBarType.fixed,
                currentIndex: _selectedIndex,
                onTap: (index) {
                  _selectedIndex = index;
                  _pageController.animateToPage(index,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeIn);
                }),
          ),
        ],
      ),
    );
  }
}
