import 'package:flutter/material.dart';
import 'package:new_design/screens/widgets/app_bar_widget.dart';
import 'package:new_design/screens/widgets/drawer.dart';
import 'package:new_design/screens/widgets/two_button_widget.dart';
import 'package:new_design/screens/widgets/draggable_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.orange,
        child: Stack(
          children: const [
            DraggableWidget(),

            Positioned(
              bottom: 25,
              child: TwoButtonsWidgets(),
            )
          ],
        ));
  }
}
