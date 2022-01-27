import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:new_design/contstants.dart';
class CustomClipPath extends StatefulWidget {
  const CustomClipPath({Key? key}) : super(key: key);

  @override
  _CustomClipPathState createState() => _CustomClipPathState();
}

class _CustomClipPathState extends State<CustomClipPath> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ClipPath(
        clipper: MyClipper(),
        child: Container(
          alignment: Alignment.center,
          height: 300,
          color: Colors.amber,
          child: Text("Quant", style: TextStyle(color: textColor, fontSize: 45),),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, size.height);
    path.lineTo(size.width/2, size.height/2);
    path.lineTo(size.width/3, size.height/3*2);
    path.lineTo(size.width/3*2, size.height/3*2);

   return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip

    return true;
  }

}
