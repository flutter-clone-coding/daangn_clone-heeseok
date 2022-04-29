import 'package:flutter/material.dart';

class FloatingButtonPage extends StatefulWidget {
  final dx;
  final dy;
  const FloatingButtonPage({Key? key, required this.dx, required this.dy}) : super(key: key);

  @override
  _FloatingButtonPageState createState() => _FloatingButtonPageState();
}

class _FloatingButtonPageState extends State<FloatingButtonPage> {

  final _tapIcon = [
    Icons.work,
    Icons.assignment,
    Icons.set_meal,
    Icons.apartment,
    Icons.drive_eta,
  ];

  final _tapText = [
    "알바",
    "과외/클래스",
    "농수산물",
    "부동산",
    "중고차",
  ];

  final _tapColor = [
    Colors.deepOrange,
    Colors.green,
    Colors.grey,
    Colors.blueAccent,
    Colors.blue,
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black38.withOpacity(0.6),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: GestureDetector(
              onTap: () {
                print("floating button pop click any position");
                Navigator.pop(context);
              },
            ),
          ),
          Positioned(
            left: widget.dx,
            top: widget.dy,
            child: FloatingActionButton(
              elevation: 0,
              highlightElevation: 25,
              backgroundColor: Colors.white,
              child: const Icon(
                Icons.close,
                color: Colors.black,
              ),
              onPressed: () {
                print("pop click floating action x");
                Navigator.pop(context);
              },
            ),
          ),
          Positioned(
            right: widget.dx - 305,
            bottom: widget.dy - 450,
            child: Container(
              width: 200,
              height: 250,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: List.generate(5, (index) {
                  return Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 10, left: 15),
                    child: Row(
                      children: [
                        Icon(
                          _tapIcon[index],
                          color: _tapColor[index],
                          size: 30,
                        ),
                        const SizedBox(width: 20,),
                        Text(
                          _tapText[index],
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
          ),
          Positioned(
            right: widget.dx - 305,
            bottom: widget.dy - 510,
            child: Container(
              padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20),
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: const [
                  Icon(
                    Icons.inventory,
                    color: Colors.brown,
                  ),
                  SizedBox(width: 20,),
                  Text(
                    "내 물건 팔기",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
