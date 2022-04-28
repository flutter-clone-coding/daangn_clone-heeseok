import 'package:flutter/material.dart';

class FloatingButtonPage extends StatefulWidget {
  const FloatingButtonPage({Key? key}) : super(key: key);

  @override
  _FloatingButtonPageState createState() => _FloatingButtonPageState();
}

class _FloatingButtonPageState extends State<FloatingButtonPage> {

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black38.withOpacity(0.2),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
            ),
          ),
        ],
      ),
    );
  }
}
