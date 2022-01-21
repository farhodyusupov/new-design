import 'package:flutter/material.dart';

import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:new_design/screens/widgets/app_bar_widget.dart';

class SparkLineWidget extends StatefulWidget {
  const SparkLineWidget({Key? key}) : super(key: key);

  @override
  _SparkLineWidgetState createState() => _SparkLineWidgetState();
}

class _SparkLineWidgetState extends State<SparkLineWidget> {
  @override
  Widget build(BuildContext context) {
    return  Container(
          // padding: EdgeInsets.symmetric(horizontal: 25),
          child:  Container(

              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const AppBarWidget(),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Humo",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          "20 000 513 so`m",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "986051****7000",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    ),
                  ),

                  Sparkline(
                    data: [1.5, 1, 0, 2, 5, 1.5, 2, 5, 2.3],
                    // backgroundColor: Colors.red,
                    lineColor: Colors.lightGreen[500]!,
                    // fillMode: FillMode.below,
                    fillColor: Colors.lightGreen[200]!,
                    pointsMode: PointsMode.all,
                    pointSize: 5.0,
                    pointColor: Colors.amber,
                    useCubicSmoothing: true,
                    lineWidth: 1.0,
                    gridLinelabelPrefix: '\$',
                    gridLineLabelPrecision: 3,

                    lineGradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.purple[800]!, Colors.purple[200]!],
                    ),
                    fillGradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.red[800]!, Colors.red[200]!],
                    ),
                  ),
                  const Divider(
                    color: Colors.black,
                    height: 10,
                  ),
                  Expanded(
                    child: ListView.builder(
                      // shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 9,
                      itemBuilder: (BuildContext context, int index) =>
                          Container(
                        child: Row(
                          children: [
                            Text(
                              (index + 1).toString(),
                            ),
                            index!=8?SizedBox(width: MediaQuery.of(context).size.width/9-5,):Container(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),


    );
  }
}
