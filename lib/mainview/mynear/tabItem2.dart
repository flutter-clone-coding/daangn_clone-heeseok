import 'package:flutter/material.dart';

class TabItem2Page extends StatefulWidget {
  const TabItem2Page({Key? key}) : super(key: key);

  @override
  _TabItem2PagePageState createState() => _TabItem2PagePageState();
}

class _TabItem2PagePageState extends State<TabItem2Page> {

  final _title = ["군고구마.쥐포.오징어", "삼한골든뷰센트럴파크상가 앞 붕어빵", "붕어빵",];
  final _distance = ["2Km", "807m", "464m"];
  final _text = ["군고구마", "밭 붕어빵", "팥 붕어빵",];
  final _time = ["2022.4.1", "2022.4.5", "2022.4.6"];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 15.0, right: 15.0),
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: Colors.deepOrangeAccent,
          ),
        ),
        const SizedBox(height: 10,),
        Column(
          children: List.generate(3, (index) {
            return Container(
              margin: const EdgeInsets.only(left: 16.0, right: 16.0),
              decoration: BoxDecoration(
                border: index == 2 ? null : const Border(bottom: BorderSide(color: Colors.black12)),
              ),
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            _title[index],
                            style: const TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 5,),
                          Text(
                            _distance[index],
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.deepOrangeAccent,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 5,),
                      SizedBox(
                        width: 350,
                        child: Text(
                          _text[index],
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: const TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(height: 5,),
                      Text(
                        "${_time[index]} 업데이트",
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                ],
              ),
            );
          }),
        ),
        const SizedBox(height: 20,),
        Container(
          decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.black12)),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "겨율간식 지도 더보기",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.black54,
                ),
              ),
              SizedBox(width: 5,),
              Icon(Icons.chevron_right),
            ],
          ),
        ),
      ],
    );
  }
}
