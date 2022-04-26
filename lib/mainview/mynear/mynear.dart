import 'package:flutter/material.dart';

class MyNearPage extends StatefulWidget {
  const MyNearPage({Key? key}) : super(key: key);

  @override
  _MyNearPageState createState() => _MyNearPageState();
}

class _MyNearPageState extends State<MyNearPage> {

  var cards = [
    '인기',
    '아파트매매',
    '전세',
    '네일',
    '투룸',
    '속눈썹펌',
    '원룸',
    '오피스텔',
    '헬스',
    '아파트',
    '아르바이트',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 25, bottom: 10),
            width: MediaQuery.of(context).size.width * 0.9,
            height: 50,
            decoration: BoxDecoration(
                color: const Color(0xffe9e9e9),
                borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              children: const [
                SizedBox(width: 10,),
                Icon(Icons.search),
                SizedBox(width: 10,),
                Text(
                  "주변 가게, 알바, 중고차를 찾아보세요.",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(cards.length, (index) {
                  return Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: index == 0 ? null : Border.all(
                          width: 1,
                          color: const Color(0xffd3d3d3),
                        ),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      cards[index],
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: index == 0 ? FontWeight.bold : FontWeight.normal,
                        color: index == 0 ? Colors.grey : Colors.black,
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
          Container(
            height: 1,
            margin: const EdgeInsets.only(left: 10, right: 10),
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(bottom: BorderSide(
                width: 1,
                color: Color(0xffd3d3d3),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
