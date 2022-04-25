import 'package:flutter/material.dart';
import 'package:dotted_decoration/dotted_decoration.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {

  final List<String> _toText = [
    "내 동네 설정",
    "동네 인증하기",
    "키워드 알림",
    "관심 카테고리 설정",
    "모아보기",
    "당근가계부",
    "받은 쿠폰함",
    "내 단골 가게",
    "동네생활 글/댓글",
    "동네 가게 후기",
    "비즈프로필 만들기",
    "동네홍보 글",
    "지역광고",
    "친구초대",
    "공지사항",
    "자주 묻는 질문",
    "앱 설정",
  ];

  final _toIcons = [
    Icons.location_on_outlined,
    Icons.location_searching_outlined,
    Icons.local_offer_outlined,
    Icons.tune_outlined,
    Icons.grid_view,
    Icons.account_balance_wallet_outlined,
    Icons.redeem_outlined,
    Icons.storefront,
    Icons.rate_review_outlined,
    Icons.feedback_outlined,
    Icons.store_outlined,
    Icons.article_outlined,
    Icons.surround_sound_outlined,
    Icons.email_outlined,
    Icons.keyboard_voice_outlined,
    Icons.contact_support_outlined,
    Icons.settings_suggest_outlined,
  ];
  
  final _toImage = [
    'lib/asset/mypage/note.png',
    'lib/asset/mypage/cart.png',
    'lib/asset/mypage/heart.png',
  ];
  
  final _text = [
    "판매내역",
    "구매내역",
    "관심목록",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 15, bottom: 15, left: 15, right: 15),
            decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(
                width: 10,
                color: Color(0xfff5f5f5),
              )),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 55,
                      height: 55,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: const FittedBox(
                        child: Image(
                          image: AssetImage('lib/asset/chat/profile_8.png'),
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "내 별명",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 3,),
                        Text(
                            "흑석동 #12345678",
                          style: TextStyle(
                            fontSize: 13.5,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.chevron_right,
                      color: Colors.black,
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 25, bottom: 15),
                  width: MediaQuery.of(context).size.width * 0.95,
                  height: 55,
                  decoration: DottedDecoration(
                    shape: Shape.box,
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.deepOrangeAccent,
                    strokeWidth: 2,
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 15,),
                      Container(
                        width: 25,
                        height: 25,
                        margin: const EdgeInsets.only(top:10, bottom: 10),
                        child: Image.asset(
                          "lib/asset/daangn_logo.png",
                        ),
                      ),
                      const Text(
                        "pay",
                        style: TextStyle(
                          fontFamily: "Jalnan",
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffF27F3D),
                        ),
                      ),
                      const Spacer(),
                      const Text(
                        "중고거래는 이제 당근페이로 해보세요!",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(width: 15,)
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (index) {
                    return Container(
                      margin: EdgeInsets.only(top: 10, bottom: 10, left: index == 0 ? 5 : 40, right: index == 2 ? 5 : 40),
                      child: Column(
                        children: [
                          Container(
                            width: 55,
                            height: 55,
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white,
                                border: Border.all(color: Colors.black12)
                            ),
                            child: FittedBox(
                              child: Image(
                                image: AssetImage(_toImage[index]),
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                          const SizedBox(height: 5,),
                          Text(
                              _text[index],
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
          Column(
            children: List.generate(_toText.length, (index) {
              return Container(
                decoration: BoxDecoration(
                  border: index == 3 || index == 7 || index == 9 || index == 12 ? const Border(bottom: BorderSide(
                    width: 10,
                    color: Color(0xfff5f5f5),
                  )) : null,
                ),
                padding: const EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 5),
                child: Row(
                  children: [
                    Icon(
                      _toIcons[index],
                      color: Colors.black,
                      size: 30,
                    ),
                    const SizedBox(width: 15,),
                    Text(
                      _toText[index],
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
