import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:daangn_clone/register/locationStart.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white, // Appbar 배경색
        elevation: 0.0, // Appbar 그림자
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRouteWithoutAnimation(
                builder: (context) => LocationStartPage(

                ),
              ),
            );
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 20, bottom: 20),
                child: Text(
                  "휴대폰 번호를 인증해주세요.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text(
                        "당근마켓은 휴대폰 번호로 가입해요. 번호는 ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "안전하게",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text(
                        "보관",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "되며 어디에도 공개되지 않아요.",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Container(
                  height: 60,
                  margin: EdgeInsets.only(top: 30),
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                    ],
                    decoration: const InputDecoration(
                      hintText: '휴대폰 번호를 입력해주세요',
                      contentPadding: const EdgeInsets.all(15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(7.5)
                        ),
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:20, bottom: 20),
                width: MediaQuery.of(context).size.width * 0.9,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    '인증문자 받기',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    splashFactory: NoSplash.splashFactory,
                    primary: Colors.black12,
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(7.5),
                    ),
                  ),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Text(
                        "휴대폰 번호가 변경되었나요?",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Text(
                        "이메일로 계정찾기",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
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