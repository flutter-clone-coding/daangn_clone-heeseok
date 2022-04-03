import 'package:flutter/material.dart';
import 'package:daangn_clone/register/login.dart';

class LocationRequestPage extends StatefulWidget {
  @override
  _LocationRequestPageState createState() => _LocationRequestPageState();
}

class _LocationRequestPageState extends State<LocationRequestPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: '내 동네 이름(동,읍,면)으로 검색',
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top:20, bottom: 20),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height:40,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRouteWithoutAnimation(
                          builder: (context) => LoginPage(

                          ),
                        ),
                      );
                    },
                    child: Text(
                      '현재 위치로 찾기',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepOrangeAccent,
                      elevation: 0,
                      splashFactory: NoSplash.splashFactory,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 25, bottom: 10),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '근처 동네',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: Colors.black12)),
                          ),
                          padding: EdgeInsets.only(left: 10),
                          child: ListTile(
                            title: Text(
                              '부산 부산진구 양정제1동',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: Colors.black12)),
                          ),
                          padding: EdgeInsets.only(left: 10),
                          child: ListTile(
                            title: Text(
                              '부산 부산진구 연지동',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                        Column(
                          children: List.generate(15, (index) {
                            return Container(
                              decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(color: Colors.black12)),
                              ),
                              padding: EdgeInsets.only(left: 10),
                              child: ListTile(
                                title: Text(
                                  '부산 부산진구 범전동',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                      ],
                    ),
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