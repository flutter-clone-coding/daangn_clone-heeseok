import 'package:flutter/material.dart';

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