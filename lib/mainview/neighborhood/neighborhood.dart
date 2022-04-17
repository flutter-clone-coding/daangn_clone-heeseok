import 'package:flutter/material.dart';

class NeighborhoodPage extends StatefulWidget {
  const NeighborhoodPage({Key? key}) : super(key: key);

  @override
  _NeighborhoodPageState createState() => _NeighborhoodPageState();
}

class _NeighborhoodPageState extends State<NeighborhoodPage> {

  var cards = [
    '동네사진전',
    '동네질문',
    '동네맛집',
    '동네소식',
    '취미생활',
    '분실/실종센터',
    '동네사건사고',
    '해주세요',
    '일상',
    '고양이',
    '강아지',
    '건강',
    '살림',
    '인테리어',
    '교육/학원',
    '출산/육아',
    '기타',
  ];

  var maintext = [
    '현재 백양산 애진봉... 철쭉 안폈... ... 속았.. ㅠㅠ 날씨는 좋습니닷...',
    '신&&&&점 아기동자같은? 갓 신내린곳 아시는분 부탁드려요.... ㅁ 뭐가 다 안 플려서ㅜ갑갑하네요ㅠㅠ',
    '시청근처 SK뷰 상가에 수제 강아지 간식 파는 곳이 생겼어요~ 지나가면서 눈팅만 하다 들어가 봤는데 완전 제스타일이네요~',
    '혹시 폰이나 번호를 바꾸셨으면 꼭 다시 연락주세요 갑자기 탈퇴하셔서..',
    '롯데 상품권 서면롯백근처에서 싸게살수있나요? 어디서 얼마나하는지 아시는분!',
    '날씨도 좋은데 세차하러 가실분들?!',
    '연산 5동 의류수거함어딧는지 아시는분~^^~',
    '피아노 연탄곡 함께 치실분~~~ 피아노 취미로 치고있는데 같이 취미공유도 하고 연탄곡 함계 치실분 구해용~~ 연습실은 제가 알아볼게요',
    '혹시 최근에 백양산에 가신분 계실까요? 애진봉에 철쭉폈는지 궁금해요~ 오늘 올라가 볼까 해서요!',
    '벌써 22년도 4월의 끝을 달리고 있네요\n코로나 여파로 지쳐 아직도 소외된 곳에서 힘드실 당근님들 화창한 휴일이지만 지친마음에 힘드신 분들..',
  ];
  
  var nickname = [
    '무한쏘주사랑', 'Sssshot', '옷다발', '사과', '치리치리', '푸웁', '꼬양꼬양', '그링', '마이히어로', '터진김밥'
  ];
  
  var region = [
    '양무동', '독산동', '도봉동', '연제구 거제제3동', '연산제2동', '연산제5동', '전포제2동', '범전동', '거제제4동', '거제제3동'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xfff5f5f5),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(17, (index) {
                    return Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            width: 1,
                            color: Color(0xffd3d3d3),
                          ),
                          borderRadius: BorderRadius.circular(5)
                        ),
                        margin: const EdgeInsets.only(left: 10, right: 10),
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          cards[index],
                          style: const TextStyle(
                            fontSize: 13,
                          ),
                        ),
                    );
                  }),
                ),
              ),
            ),
            Column(
              children: List.generate(15, (index) {
                return index == 1 ? Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    border: Border(bottom: BorderSide(
                      width: 5,
                        color: Color(0xfff5f5f5),
                    )),
                  ),
                  padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 60,
                        height: 60,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border: Border.all(color: Colors.black12),
                        ),
                        child: const FittedBox(
                          child: Image(
                            image: AssetImage('lib/asset/neighborhood/pink_camera.jpg'),
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 3),
                              child: const Text(
                                "내 동네 벚꽃 명소를 아시나요?",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(bottom: 3),
                              child: const Text(
                                "소소한 동네 벚꽃 사진을 공유해보세요",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black38,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
                : Container(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    border: Border(bottom: BorderSide(
                        width: 5,
                        color: Color(0xfff5f5f5),
                    )),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide(color: Colors.black12)),
                        ),
                        child: Container(
                          padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 80,
                                margin: const EdgeInsets.only(top: 5),
                                padding: const EdgeInsets.only(top: 3, bottom: 3, left: 7.5, right: 7.5),
                                decoration: BoxDecoration(
                                  color: const Color(0xfff5f5f5),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text(
                                    index%2 == 0 ? cards[3] : cards[1],
                                    style: const TextStyle(
                                      fontSize: 13,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 20),
                                child: Text.rich(
                                  TextSpan(
                                    children: <TextSpan>[
                                      index%2 == 0 ? const TextSpan(text: "") : TextSpan(text: "Q. ", style: TextStyle(fontSize: 18, color: Colors.deepOrangeAccent)),
                                      TextSpan(text: maintext[index%10], style: TextStyle(fontSize: 16)),
                                    ],
                                  ),
                                ),
                              ),
                              index%10 == 0 ?
                              Container(
                                margin: const EdgeInsets.only(top: 20),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(right: 5),
                                      width: MediaQuery.of(context).size.width * 0.45,
                                      height: 200,
                                      clipBehavior: Clip.hardEdge,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.white,
                                        border: Border.all(color: Colors.black12),
                                      ),
                                      child: const FittedBox(
                                        child: Image(
                                          image: AssetImage('lib/asset/neighborhood/mountain1.jpg'),
                                        ),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(bottom: 2.5),
                                          width: MediaQuery.of(context).size.width * 0.45,
                                          height: 97.5,
                                          clipBehavior: Clip.hardEdge,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            color: Colors.white,
                                            border: Border.all(color: Colors.black12),
                                          ),
                                          child: const FittedBox(
                                            child: Image(
                                              image: AssetImage('lib/asset/neighborhood/mountain2.jpg'),
                                            ),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(top: 2.5),
                                          width: MediaQuery.of(context).size.width * 0.45,
                                          height: 97.5,
                                          clipBehavior: Clip.hardEdge,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            color: Colors.white,
                                            border: Border.all(color: Colors.black12),
                                          ),
                                          child: const FittedBox(
                                            child: Image(
                                              image: AssetImage('lib/asset/neighborhood/mountain3.jpg'),
                                            ),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ) :
                              Container(),
                              Container(
                                margin: const EdgeInsets.only(top: 30, bottom: 5),
                                child: Row(
                                  children: [
                                    Text(
                                      nickname[index%10],
                                      style: const TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    const Text(
                                      " · ",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Text(
                                      region[index%10],
                                      style: const TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    const Spacer(),
                                    Text(
                                      "${index + 1}시간전",
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // 하단 아이콘 container
                      Container(
                        padding: const EdgeInsets.only(top: 10,left: 10, right: 10),
                        child: Row(
                          children: [
                            Icon(
                              index%2 == 0 ?
                              Icons.sentiment_satisfied_alt :
                              Icons.task_alt,
                              color: Colors.grey,
                            ),
                            const SizedBox(width: 5,),
                            Text(
                                index%2 == 0 ? "공감하기" : "궁금해요",
                              style: const TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(width: 15,),
                            const Icon(
                              Icons.mode_comment_outlined,
                              color: Colors.grey,
                            ),
                            const SizedBox(width: 5,),
                            Text(
                              index%2 == 0 ? "댓글쓰기" : '답변 ${index}',
                              style: const TextStyle(
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
