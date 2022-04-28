import 'package:flutter/material.dart';
import 'package:daangn_clone/mainview/home/home.dart';
import 'package:daangn_clone/mainview/neighborhood/neighborhood.dart';
import 'package:daangn_clone/mainview/neighborhood/writetext.dart';
import 'package:daangn_clone/mainview/chat/chat.dart';
import 'package:daangn_clone/mainview/mypage/mypage.dart';
import 'package:daangn_clone/mainview/mynear/mynear.dart';
import 'package:daangn_clone/mainview/home/floatingButtonPage.dart';

class MainViewPage extends StatefulWidget {
  const MainViewPage({Key? key}) : super(key: key);

  @override
  _MainViewPageState createState() => _MainViewPageState();
}

class _MainViewPageState extends State<MainViewPage> {

  int _selectedIndex = 0;
  bool _floatingVisible = true;
  var _icon = Icons.add;

  double turns = 0.0;

  static const TextStyle optionStyle = TextStyle(fontSize: 40, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    NeighborhoodPage(),
    MyNearPage(),
    ChatPage(),
    MyPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      // floatingActionButton visibility
      if(_selectedIndex == 0 || _selectedIndex == 1) {
        _floatingVisible = true;
      } else {
        _floatingVisible = false;
      }
      // floatingActionButton icon
      if(_selectedIndex == 0) {
        _icon = Icons.add;
      } else {
        _icon = Icons.edit;
      }
    });
  }

  Future<void> _showPopupMenu() async {
    await showMenu<String>(
      context: context,
      position: const RelativeRect.fromLTRB(0.0, 100.0, 0.0, 0.0), //position where you want to show the menu on screen
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      elevation: 5.0,
      items: [
        PopupMenuItem<String>(
            child: Container(
              width: 150,
              margin: const EdgeInsets.only(left: 10),
              child: const Text(
                '내 동네',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            value: '1',
            onTap: () {},
        ),
        PopupMenuItem<String>(
            child: Container(
              width: 150,
              margin: const EdgeInsets.only(left: 10),
              child: const Text(
                '내 동네 설정',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
            ),
            value: '2',
            onTap: () {},
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      floatingActionButton: Visibility(
        visible: _floatingVisible,
        child: FloatingActionButton(
          elevation: 0,
          highlightElevation: 25,
          backgroundColor: Colors.deepOrangeAccent,
          child: Icon(_icon),
          onPressed: () {
            if(_selectedIndex == 0) {
              print("${_selectedIndex} floating button click!");
              Navigator.push(
                  context,
                  PageRouteBuilder(
                    opaque: false,
                    pageBuilder: (context, animation, secondaryAnimation) => FloatingButtonPage(),
                    transitionsBuilder: (context, animation, secondaryAnimation, child) {
                      return FadeTransition(opacity: animation, child: child,);
                    },
                  ),
              );
            } else if (_selectedIndex == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WriteTextPage()),
              );
            }
          },
        ),
      ),
      appBar: AppBar(
        leadingWidth: 20,
        title: _selectedIndex == 0 || _selectedIndex == 1 ? GestureDetector(
          onTap: () async {
            setState(() {
              turns += 0.5;
              print("click showPopupMenu");
            });
            // setState --> Future
            await _showPopupMenu();
            // setStat --> turns
            setState(() {
              turns -= 0.5;
              print("close showPopupMenu");
            });
          },
          child: Row(
            children: [
              const Text(
                '내 동네',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              AnimatedRotation(
                turns: turns,
                duration: const Duration(milliseconds: 300),
                child: const Icon(
                  Icons.expand_more,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ) : Text(
          _selectedIndex == 2 ? '내 근처' : _selectedIndex == 3 ? "채팅" : "나의 당근",
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: false,
        titleSpacing: 0,
        backgroundColor: Colors.white, // Appbar 배경색
        elevation: 1, // Appbar 그림자
        actions: <Widget>[
          IconButton(
            onPressed: () => {},
            icon: Icon(
              _selectedIndex == 0 || _selectedIndex == 1 ?
              Icons.search :
              _selectedIndex == 2 ?
              Icons.edit_outlined :
              null,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () => {},
            icon: Icon(
              _selectedIndex == 0 ?
              Icons.menu :
              _selectedIndex == 1 ?
              Icons.menu_open :
              _selectedIndex == 2 || _selectedIndex == 3 ?
              Icons.qr_code :
              null,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () => {},
            icon: Icon(
              _selectedIndex == 4 ? Icons.settings_outlined :  Icons.notifications_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.black,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        // onTap: (index) => {},
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article_outlined),
            label: '동네생활',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pin_drop_outlined),
            label: '내 근처',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.question_answer_outlined),
            label: '채팅',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: '나의 당근',
          ),
        ],
      ),
      body: WillPopScope(
        onWillPop: () {
          return Future(() => false);
        },
        child: SafeArea(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
    );
  }
}
