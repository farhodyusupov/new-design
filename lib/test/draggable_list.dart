import 'package:flutter/material.dart';
import 'package:draggable_bottom_sheet/draggable_bottom_sheet.dart';
import 'package:new_design/test/my_screen.dart';

class DraggableWidget extends StatefulWidget {
  const DraggableWidget({Key? key}) : super(key: key);

  @override
  _DraggableWidgetState createState() => _DraggableWidgetState();
}

class _DraggableWidgetState extends State<DraggableWidget> {
  final String title = "";

  @override
  Widget build(BuildContext context) {

    return DraggableBottomSheet(
      backgroundWidget: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            gradient:
            LinearGradient(colors: [Color.fromRGBO(0, 158, 253, 1), Color.fromRGBO(42, 245, 152, 1)]),
          ),
          child: SparkLineWidget(),
        ),
      ),
      previewChild: Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),

      ),
      expandedChild: Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Column(
          children:  <Widget>[
            const Icon(
              Icons.keyboard_arrow_down,
              size: 30,
              color: Colors.white,
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'Hey...I\'m expanding!!!',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 16,
            ),
            tranzaksiWidget("assets/icons/beeline.png", "Farhod Yusubov ", "91 526 47 88", 10000),

            ]
        ),
      ),
      minExtent: MediaQuery.of(context).size.height*0.5,
      maxExtent: MediaQuery.of(context).size.height * 0.7,
    );
  }
}


tranzaksiWidget(String image, String name, String desc, int amoun){
  return Row(
    children: [
      Image(image: AssetImage(image),),
      const SizedBox(width: 14,),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
          Text(desc),
        ],
      ),
      const SizedBox(width: 100,),
      Text(amoun.toString()+"so`m"),
    ],
  );
}
