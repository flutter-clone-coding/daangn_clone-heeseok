import 'package:flutter/material.dart';
import 'package:daangn_clone/mainview/home/home.dart';

class MainViewPage extends StatefulWidget {
  const MainViewPage({Key? key}) : super(key: key);

  @override
  _MainViewPageState createState() => _MainViewPageState();
}

class _MainViewPageState extends State<MainViewPage> {

  int _selectedIndex = 0;
  bool _floatingVisible = false;
  var _icon = Icons.add;

  static const TextStyle optionStyle = TextStyle(fontSize: 40, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Text(
      'Index 1: 동네생활',
      style: optionStyle,
    ),
    Text(
      'Index 2: 내 근처',
      style: optionStyle,
    ),
    Text(
      'Index 3: 채팅',
      style: optionStyle,
    ),
    Text(
      'Index 4: 당근',
      style: optionStyle,
    ),
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

          },
        ),
      ),
      appBar: AppBar(
        leadingWidth: 20,
        title: const Text(
          '내 동네',
          style: TextStyle(
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
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () => {},
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () => {},
            icon: const Icon(
              Icons.notifications_outlined,
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
