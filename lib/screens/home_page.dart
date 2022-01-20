import 'package:flutter/material.dart';
import 'package:new_design/screens/widgets/app_bar_widget.dart';
import 'package:new_design/screens/widgets/two_button_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
        color: Colors.orange,
        child: Stack(
          children: [
            AppBarWidget(),
            // Container(
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: const [
            //       Text(
            //         "Humo",
            //         style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 30,
            //             fontWeight: FontWeight.bold),
            //       ),
            //       SizedBox(
            //         height: 6,
            //       ),
            //       Text(
            //         "20 000 513 so`m",
            //         style: TextStyle(color: Colors.white, fontSize: 15),
            //       ),
            //       SizedBox(
            //         height: 5,
            //       ),
            //       Text(
            //         "986051****7000",
            //         style: TextStyle(color: Colors.white, fontSize: 15),
            //       ),
            //     ],
            //   ),
            // ),
            // Container(
            //   child: Row(
            //     children: [Text("hello world")],
            //   ),
            // ),
            Positioned(
              bottom: 25,
              child: TwoButtonsWidgets(),
            )
          ],
        ));
  }
}
