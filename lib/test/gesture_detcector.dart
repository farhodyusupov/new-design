import 'package:flutter/material.dart';

class TestGestureDetector extends StatefulWidget {
  const TestGestureDetector({Key? key}) : super(key: key);

  @override
  _TestGestureDetectorState createState() => _TestGestureDetectorState();
}

class _TestGestureDetectorState extends State<TestGestureDetector> {
  var abd = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onHorizontalDragDown:(de) {
        setState(() {
          abd=!abd;
        });
      },
      child: Container(
        color: abd?Colors.orange:Colors.blue,
      ),
    );
  }
}
