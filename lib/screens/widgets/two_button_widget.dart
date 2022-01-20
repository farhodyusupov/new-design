import 'package:flutter/material.dart';

class TwoButtonsWidgets extends StatefulWidget {
  const TwoButtonsWidgets({Key? key}) : super(key: key);

  @override
  _TwoButtonsWidgetsState createState() => _TwoButtonsWidgetsState();
}

class _TwoButtonsWidgetsState extends State<TwoButtonsWidgets> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {},
            child: Container(
              width: MediaQuery.of(context).size.width / 7 * 3,
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.receipt, color: Colors.white,),
                  Text("Оплата", style: TextStyle(color:Colors.white),),
                ],
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Container(
              width: MediaQuery.of(context).size.width/7*3,
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.wifi_protected_setup_outlined, color: Colors.white,),
                  Text("ПереводЫ", style: TextStyle(color: Colors.white),),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
