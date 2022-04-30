import 'package:flutter/material.dart';

class MyNearPage extends StatefulWidget {
  const MyNearPage({Key? key}) : super(key: key);

  @override
  _MyNearPageState createState() => _MyNearPageState();
}

class _MyNearPageState extends State<MyNearPage> with TickerProviderStateMixin {

  late TabController _nestedTabController;

  @override
  void initState() {
    super.initState();

    _nestedTabController = new TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _nestedTabController.dispose();
  }

  final cards = [
    '인기', '아파트매매', '전세', '네일', '투룸', '속눈썹펌', '원룸', '오피스텔', '헬스', '아파트', '아르바이트',
  ];

  final _gridIcon = [
    "lib/asset/mynear/coupon.png",
    "lib/asset/mynear/apron.png",
    "lib/asset/mynear/real-state.png",
    "lib/asset/mynear/vegetable.png",
    "lib/asset/mynear/car.png",
    "lib/asset/mynear/blackboard.png",
    "lib/asset/mynear/shipping.png",
  ];

  final _gridText = [
    "쿠폰북", "당근알바", "부동산 직거래", "농수산물", "중고차", "과외/클래스", "당근미니",
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
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 30, bottom: 27.5),
            height: 225,
            decoration: const BoxDecoration(
              border : Border(bottom: BorderSide(
                width: 10,
                color: Color(0xfff5f5f5),
                ),
              ),
            ),
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 7,
              padding: const EdgeInsets.all(0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, //1 개의 행에 보여줄 item 개수
                childAspectRatio: 1/0.9, //item 의 가로 1, 세로 2 의 비율
                mainAxisSpacing: 1, //수평 Padding
                crossAxisSpacing: 1, //수직 Padding

              ),
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    SizedBox(
                      width: 35,
                      height: 35,
                      child: Image.asset(_gridIcon[index]),
                    ),
                    const SizedBox(height: 5,),
                    Text(_gridText[index]),
                  ],
                );
              },
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              TabBar(
                controller: _nestedTabController,
                indicatorColor: Colors.teal,
                labelColor: Colors.teal,
                unselectedLabelColor: Colors.black54,
                isScrollable: true,
                tabs: <Widget>[
                  Tab(
                    text: "One",
                  ),
                  Tab(
                    text: "Two",
                  ),
                  Tab(
                    text: "Three",
                  ),
                  Tab(
                    text: "Four",
                  ),
                  Tab(
                    text: "Five",
                  ),
                ],
              ),
              Container(
                height: 300,
                margin: EdgeInsets.only(left: 16.0, right: 16.0),
                child: TabBarView(
                  controller: _nestedTabController,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.blueAccent,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.orangeAccent,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.greenAccent,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.indigoAccent,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.redAccent,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
