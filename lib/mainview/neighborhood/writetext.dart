import 'package:flutter/material.dart';

class WriteTextPage extends StatefulWidget {
  const WriteTextPage({Key? key}) : super(key: key);

  @override
  _WriteTextPageState createState() => _WriteTextPageState();
}

class _WriteTextPageState extends State<WriteTextPage> {

  bool textValid = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: InkWell(
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
            "동네생활 글쓰기",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: false,
        titleSpacing: 0,
        backgroundColor: Colors.white, // Appbar 배경색
        elevation: 1, // Appbar 그림자
        actions: <Widget>[
          InkWell(
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(right: 10),
              child: Text(
                "완료",
                style: TextStyle(
                  fontSize: 18,
                  color: textValid ? Colors.black : Colors.grey,
                ),
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.black12),
                  )
                ),
                margin: EdgeInsets.only(left: 10, right: 10),
                padding: EdgeInsets.only(top: 25, bottom: 25),
                child: Row(
                  children: const [
                    Text(
                      "게시글의 주제를 선택해주세요",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.expand_more,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  child: TextFormField(
                    onChanged: (text) {
                      setState(() {
                        if(text.length >= 1) {
                          textValid = true;
                        } else {
                          textValid = false;
                        }
                      });
                    },
                    keyboardType: TextInputType.multiline,
                    maxLines: 50,
                    minLines: 1,
                    decoration: const InputDecoration(
                      hintText: "내 동네 근처의 이웃에게 질문하거나 이야기를 해보세요.",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
              decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.black12),
                  ),
              ),
              child: Row(
                children: const [
                  SizedBox(width: 10,),
                  Icon(
                    Icons.insert_photo_outlined,
                    color: Colors.black,
                  ),
                  SizedBox(width: 5,),
                  Text(
                    "0/10",
                  ),
                  SizedBox(width: 15,),
                  Icon(
                    Icons.place_outlined,
                    color: Colors.black,
                  ),
                  SizedBox(width: 5,),
                  Text(
                    "0/1",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
