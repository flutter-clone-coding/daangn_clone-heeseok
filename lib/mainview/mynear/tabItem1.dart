import 'package:flutter/material.dart';

class TabItem1Page extends StatefulWidget {
  const TabItem1Page({Key? key}) : super(key: key);

  @override
  _TabItem1PagePageState createState() => _TabItem1PagePageState();
}

class _TabItem1PagePageState extends State<TabItem1Page> {

  final _title = ['"참치숙성" 소담', "정육공간 연지점", "골목그집(시청포차)",];
  final _distance = ["1.1km", "882m", "1.7km"];
  final _text = [
    "여기가 맛집^^",
    "총각인지는 모르겠지만 남자2분 친절하고 고기도 맛있어요 특히 대패삼겹살이 다른데와 틀리게 껍질이 얇아서 먹기가 좋아요",
    "골목그집 안주 맛있고 분위기 좋고 ~~~~ 너무 좋았어요~~^^ 맛있게 한잔하고 기분도 좋아졌습니다.",
  ];
  final _time = ["2개월 전", "19일 전", "17일 전"];
  final _nickname = ["noname31", "천상비", "앙증"];
  final _image = ["lib/asset/mynear/tabItem1_kimchi.jpg", "", "lib/asset/mynear/tabItem1_bibimbap.jpg"];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 15.0, right: 15.0),
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: Colors.blueAccent,
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
                        width: index != 1 ? 290 : 350,
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
                        "${_time[index]} · ${_nickname[index]}님의 추천",
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  index != 1 ? Container(
                    width: 60,
                    height: 60,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.5),
                      color: Colors.white,
                      border: Border.all(color: Colors.black12),
                    ),
                    child: FittedBox(
                      child: Image(
                        image: AssetImage(_image[index]),
                      ),
                      fit: BoxFit.fill,
                    ),
                  ) : Container(),
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
          margin: const EdgeInsets.only(top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "맛집 지도 더보기",
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
