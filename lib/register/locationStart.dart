import 'package:flutter/material.dart';

class LocationStartPage extends StatefulWidget {
  @override
  _LocationStartPageState createState() => _LocationStartPageState();
}

class _LocationStartPageState extends State<LocationStartPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Container(
          color: Color(0xffF8F9FA),
          child: Column(
            children: <Widget>[
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 60, bottom: 20),
                  child: Text(
                    "당근마켓",
                    style: TextStyle(
                      fontFamily: "BMJUA",
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffF27F3D),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top:20, bottom: 20),
                  child: Image.asset(
                    "lib/asset/img_locationStart.jpg",
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top:10, bottom: 10),
                  child: Text(
                    "우리 동네 중고 직거래",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff26292D),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(bottom: 3),
                  child: Text(
                    "당근마켓은 동네 직거래 마켓이에요.",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Color(0xff495057),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(bottom: 3),
                  child: Text(
                    "내 동네를 설정하고 시작해보세요!",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Color(0xff495057),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:60, bottom: 20),
                width: 300,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRouteWithoutAnimation(
                        // builder: (context) => 다음페이지(
                        //
                        // ),
                      ),
                    );
                  },
                  child: Text(
                    '내 동네 설정하고 시작하기',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    splashFactory: NoSplash.splashFactory,
                    primary: Color(0xffF27F3D),
                    // side: BorderSide(width: 0, color: Colors.white38),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MaterialPageRouteWithoutAnimation extends MaterialPageRoute {
  MaterialPageRouteWithoutAnimation({builder}) : super(builder: builder);

  @override
  Duration get transitionDuration => const Duration(milliseconds: 0);
}
