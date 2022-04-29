import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var image = [
    'lib/asset/home/lion.png',
    'lib/asset/home/books.jpg',
    'lib/asset/home/camera.jpg',
    'lib/asset/home/guitar.jpg',
    'lib/asset/home/headset.png',
    'lib/asset/home/mouse.jpg',
    'lib/asset/home/notebook.jpg',
    'lib/asset/home/pants.jpg',
    'lib/asset/home/phone.jpg',
    'lib/asset/home/shirts.jpg',
  ];

  var title = [
    '분양합니다.',
    '안쓰는 책 팝니다.',
    '카메라 팝니다',
    '기타 싸게 내놔요',
    '헤드셋 팔아요',
    '마우스 가지실 분',
    '노트북(네고가능)',
    '청바지 팖',
    '공기계 팝니다.',
    '셔츠 2장 팔아요',
  ];

  var price = [
    '300,000원',
    '5,000원',
    '900,000원',
    '150,000원',
    '10,000원',
    '1,000원',
    '500,000원',
    '20,000원',
    '800,000원',
    '15,000원'
  ];
  
  var region = [
    '부산진구 부전제1동',
    '부산진구 초읍동',
    '범전동',
    '연산동',
    '연제구 연산동',
    '연제구 거제동',
    '연제구 연산제9동',
    '전포동',
    '장림동',
    '연산제5동',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(15, (index) {
        return Container(
          decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.black12)),
          ),
          margin: const EdgeInsets.only(left: 10, right: 10),
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: Row(
            children: <Widget>[
              Container(
                width: 120,
                height: 120,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(color: Colors.black12),
                ),
                child: FittedBox(
                  child: Image(
                    image: AssetImage(image[index%10]),
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width - 120 - 40,
                height: 120,
                margin: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      margin: const EdgeInsets.only(bottom: 3),
                      child: Text(
                        title[index%10],
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      margin: const EdgeInsets.only(bottom: 3),
                      child: Text(
                        "${region[index%10]} · 끌올 ${index+1}분전",
                        style: const TextStyle(
                          fontSize: 13,
                          color: Colors.black38,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        price[index%10],
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        const Spacer(),
                        Container(
                          margin: const EdgeInsets.only(right: 3),
                          child: const Icon(
                            Icons.chat_bubble_outline,
                            size: 18,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 5),
                          child: const Text(
                            '2',
                            style: TextStyle(
                                fontSize: 18
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 3),
                          child: const Icon(
                            Icons.question_answer_outlined,
                            size: 18,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 3),
                          child: const Text(
                            '3',
                            style: TextStyle(
                                fontSize: 18
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 3),
                          child: const Icon(
                            Icons.favorite_border,
                            size: 18,
                          ),
                        ),
                        const Text(
                          '3',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
