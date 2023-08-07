import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:icon_broken/icon_broken.dart';

  void showToast() {
    Fluttertoast.showToast(
        msg: 'Sorry the Email or Password not correct',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.yellow
    );
  }

@override
Widget buttonRight (BuildContext context) =>
     AppBar(
        backgroundColor: Colors.brown[900],
        leading: IconButton(
          splashColor: Colors.amber,
          onPressed: () {
            Navigator.pop(context);
          }, icon:  const Icon(IconBroken.Arrow___Right_2),));

@override
Widget buttonLeft (BuildContext context) =>
    AppBar(
        backgroundColor: Colors.brown[900],
        leading: IconButton(
          splashColor: Colors.amber,
          onPressed: () {
            Navigator.pop(context);
          }, icon:  const Icon(IconBroken.Arrow___Left_2),));
          



