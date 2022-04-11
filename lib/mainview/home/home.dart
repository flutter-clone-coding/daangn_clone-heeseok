import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePagePageState createState() => _HomePagePageState();
}

class _HomePagePageState extends State<HomePage> {

  int _selectedIndex = 0;

  static const TextStyle optionStyle = TextStyle(fontSize: 40, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: 홈',
      style: optionStyle,
    ),
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
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        // onTap: (index) => {},
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
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
          child: Center(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
        ),
      ),
    );
  }
}
