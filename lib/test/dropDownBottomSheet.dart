import 'package:flutter/material.dart';

class DropDownBottomSheet extends StatefulWidget {
  const DropDownBottomSheet({Key? key}) : super(key: key);

  @override
  _DropDownBottomSheetState createState() => _DropDownBottomSheetState();
}

class _DropDownBottomSheetState extends State<DropDownBottomSheet> {
  double height = 300;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onVerticalDragUpdate: (det) {
          print(det.localPosition.distance);
          setState(() {
            height = height- 1;
          });
        },
        onTapDown:     (s){
          setState(() {
            while(height!=300){
              height =height-1;

            }
          });
        },
        child: Container(
          alignment: Alignment.bottomCenter,
          width: MediaQuery.of(context).size.width,
          height: height,
          color: Colors.blue,
          child: Text("Hello"),
        ),
      ),
    );
  }
}
