import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {


  var users = ['제이', '제리', '아톰박', '미선', 'JiN', '오뚜기', '은석', '이뿐이', '스마일', 'plum'];

  var text = [
    "제이님이 이모티콘을 보냈습니다.",
    "제리님이 이모티콘을 보냈습니다.",
    "아톰박님이 이모티콘을 보냈습니다.",
    "네~",
    "JiN님이 이모티콘을 보냈습니다.",
    "네",
    "안녕하세요 먼저 연락주신 분이 있어서요! 죄송합니다.",
    "네 알겠습니다.",
    "네넵!",
    "감사합니다.",
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
  '연산제5동'
  ];

  var images = [
  'lib/asset/chat/applepencil.jpg',
  'lib/asset/chat/blackpinkAlbum.jpg',
  'lib/asset/chat/blanket.jpg',
  'lib/asset/chat/charger.jpg',
  'lib/asset/chat/comicbook.jpg',
  'lib/asset/chat/keyboard.png',
  'lib/asset/chat/math.jpg',
  'lib/asset/chat/monitor.jpg',
  'lib/asset/chat/pillow.jpg',
  'lib/asset/chat/sticker.jpg',
  ];

  var profile = [
  'lib/asset/chat/profile_1.png',
  'lib/asset/chat/profile_2.png',
  'lib/asset/chat/profile_3.png',
  'lib/asset/chat/profile_4.png',
  'lib/asset/chat/profile_5.png',
  'lib/asset/chat/profile_6.png',
  'lib/asset/chat/profile_7.png',
  'lib/asset/chat/profile_8.png',
  'lib/asset/chat/profile_9.png',
  'lib/asset/chat/profile_10.png',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(15, (index) {
        return Container(
          decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.black12)),
          ),
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 55,
                height: 55,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                  border: index == 9 ? Border.all(color: Colors.black12) : null,
                ),
                child: FittedBox(
                  child: Image(
                    image: AssetImage(profile[index%10]),
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          users[index%10],
                          style: const TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(width: 5,),
                        Text(
                          region[index%10] + " · ${index+1}달 전",
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 5,),
                    SizedBox(
                      width: 225,
                      child: Text(
                        text[index%10],
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(width: 20,),
              Container(
                width: 55,
                height: 55,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.5),
                  color: Colors.white,
                  border: Border.all(color: Colors.black12),
                ),
                child: FittedBox(
                  child: Image(
                    image: AssetImage(images[index%10]),
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
