import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:daangn_clone/register/locationRequest.dart';

class LocationStartPage extends StatefulWidget {
  const LocationStartPage({Key? key}) : super(key: key);

  @override
  _LocationStartPageState createState() => _LocationStartPageState();
}

class _LocationStartPageState extends State<LocationStartPage> {

  Future<void> requestLocationPermission() async {
    final serviceStatusLocation = await Permission.locationWhenInUse.isGranted;

    bool isLocation = serviceStatusLocation == ServiceStatus.enabled;

    final status = await Permission.locationWhenInUse.request();

    if (status == PermissionStatus.granted) {
      print('Permission Granted');
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LocationRequestPage()),
      );
    } else if (status == PermissionStatus.denied) {
      print('Permission denied');
    } else if (status == PermissionStatus.permanentlyDenied) {
      print('Permission Permanently Denied');
      await openAppSettings();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Container(
          color: const Color(0xffF8F9FA),
          child: Column(
            children: <Widget>[
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 60, bottom: 20),
                  child: const Text(
                    "당근마켓",
                    style: TextStyle(
                      fontFamily: "Jalnan",
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffF27F3D),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: 150,
                  height: 150,
                  margin: const EdgeInsets.only(top:10, bottom: 10),
                  child: Image.asset(
                    "lib/asset/daangn_logo.png",
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top:10, bottom: 10),
                  child: const Text(
                    "당신 근처의 당근마켓",
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
                  margin: const EdgeInsets.only(bottom: 3),
                  child: const Text(
                    "내 동네를 설정하고",
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
                  margin: const EdgeInsets.only(bottom: 3),
                  child: const Text(
                    "당근마켓을 시작해보세요.",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Color(0xff495057),
                    ),
                  ),
                ),
              ),

              const Expanded(
                child: SizedBox(
                  height: kToolbarHeight,
                  width: double.infinity,
                ),
              ),

              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 50,
                child: ElevatedButton(
                  onPressed: requestLocationPermission,
                  child: const Text(
                    '시작하기',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    splashFactory: NoSplash.splashFactory,
                    primary: Colors.deepOrangeAccent,
                    // side: BorderSide(width: 0, color: Colors.white38),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      '이미 계정이 있나요?',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            '/login'
                          );
                        },
                        child: const Text(
                          '로그인',
                          style: TextStyle(
                            color: Colors.orangeAccent,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
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
