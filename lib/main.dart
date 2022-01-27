import 'package:flutter/material.dart';

import 'package:new_design/screens/navigationBar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_design/test/custom_clip_path.dart';

import 'home/bloc/home_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CustomClipPath(),
      ),
    );
  }
}
