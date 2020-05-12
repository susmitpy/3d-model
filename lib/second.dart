import 'package:flutter/material.dart';
import 'third.dart';

import 'package:flutter_3d_obj/flutter_3d_obj.dart';

class Second extends StatefulWidget {
  Second({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: new FloatingActionButton(onPressed: () {
        Navigator.push(
            context, new MaterialPageRoute(builder: (context) => Third()));
      }, child: Icon(Icons.arrow_forward),),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: new Center(
        child: new Object3D(
          size: const Size(400.0, 400.0),
          path: "assets/knight.obj",
          asset: true,
        ),
      ),
    );
  }
}
