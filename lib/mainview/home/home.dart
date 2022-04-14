import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
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
                  child: const FittedBox(
                    child: Image(
                      image: AssetImage('lib/asset/mainview_lion.png'),
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
                        child: const Text(
                          "분양합니다.",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: const EdgeInsets.only(bottom: 3),
                        child: const Text(
                          "부산진구 초읍동 · 끌올 5분전",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black38,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: const Text(
                          "300,000원",
                          style: TextStyle(
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
      ),
    );
  }
}
