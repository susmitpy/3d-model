import 'package:flutter/material.dart';

import 'package:flutter_3d_obj/flutter_3d_obj.dart';



class Third extends StatefulWidget {
  Third({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _ThirdState createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  int _counter = 0;

 
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: new Center(
          child: new Object3D(
            size: const Size(400.0, 400.0),
            path: "assets/pizza.obj",
            asset: true,
          ),
        ),
   );
  }
}
