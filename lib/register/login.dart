import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:daangn_clone/mainview/mainview.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController phoneNumber = TextEditingController();
  bool phoneValid = false;
  bool certificationValid = false;
  bool widgetVisible = false;
  String buttonText = '인증문자 받기';

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
            showToast('로그인/회원가입 중에는 뒤로 갈 수 없습니다!');
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: WillPopScope(
        onWillPop: () {
          return Future(() => false);
        },
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Visibility(
                visible: !widgetVisible ? true : false,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.only(left: 20, bottom: 20),
                      child: const Text(
                        "휴대폰 번호를 인증해주세요.",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: const Text(
                            "당근마켓은 휴대폰 번호로 가입해요. 번호는 ",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        const Text(
                          "안전하게",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: const Text(
                            "보관",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const Text(
                          "되며 어디에도 공개되지 않아요.",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Center(
                child: Container(
                  height: 60,
                  margin: const EdgeInsets.only(top: 30),
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: TextFormField(
                    onChanged: (text) {
                      setState(() {
                        if(text.length >= 11) {
                          phoneValid = true;
                        } else {
                          phoneValid = false;
                        }
                      });
                    },
                    controller: phoneNumber,
                    maxLength: 11,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                    ],
                    decoration: const InputDecoration(
                      counterText:'',
                      hintText: '휴대폰 번호를 입력해주세요 (- 없이)',
                      contentPadding: EdgeInsets.all(15),
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
                margin: const EdgeInsets.only(top:20, bottom: 20),
                width: MediaQuery.of(context).size.width * 0.9,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (phoneValid) {
                        // 위젯 이벤트
                        widgetVisible = true;
                        buttonText = '인증문자 다시 받기';
                        print('push 인증문자 받기');
                      }
                    });
                  },
                  child: Text(
                    buttonText,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    splashFactory: NoSplash.splashFactory,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7.5),
                    ),
                    primary: phoneValid ? Colors.black38 : Colors.black12,
                  ),
                ),
              ),
              Visibility(
                visible: !widgetVisible ? true : false,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      "휴대폰 번호가 변경되었나요?",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: const Text(
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
              Visibility(
                visible: widgetVisible,
                child: Center(
                  child: Container(
                    height: 60,
                    margin: const EdgeInsets.only(top: 10),
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: TextFormField(
                      onChanged: (text) {
                        setState(() {
                          if(text.length >= 6) {
                            certificationValid = true;
                          } else {
                            certificationValid = false;
                          }
                        });
                      },
                      maxLength: 6,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                      ],
                      decoration: const InputDecoration(
                        counterText:'',
                        hintText: '인증번호를 입력해주세요',
                        contentPadding: EdgeInsets.all(15),
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
              ),
              Visibility(
                visible: widgetVisible,
                child: Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 25),
                  child: const Text(
                    "어떠한 경우에도 타인에게 공유하지 마세요!",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: widgetVisible,
                child: Container(
                  margin: const EdgeInsets.only(top:10, bottom: 20),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (certificationValid) {
                          // 버튼 이벤트
                          print('push 인증번호 확인');
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MainViewPage()),
                          );
                        }
                      });
                    },
                    child: const Text(
                      '인증번호 확인',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      splashFactory: NoSplash.splashFactory,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.5),
                      ),
                      primary: certificationValid ? Colors.deepOrangeAccent : Colors.black12,
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

void showToast(String message) {
  Fluttertoast.showToast(
      msg: message,
      textColor: Colors.white,
      backgroundColor: Colors.black54,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM
  );
}