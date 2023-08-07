import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    final mybuttonkey = GlobalKey();

    return  Scaffold(
      appBar: AppBar(
        title: Text("Trigger Button Click"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Container(
          padding: EdgeInsets.all(20),
          alignment: Alignment.topCenter,
          child:Column(
              children: [
                //button A
                ElevatedButton(
                  key:mybuttonkey,
                  onPressed: (){
                    print("Button is pressed");
                  },
                  child: Text("My Button"),
                ),

                //Button B
                ElevatedButton(
                    onPressed: () async {

                      RenderBox renderbox = mybuttonkey.currentContext!.findRenderObject() as RenderBox;
                      Offset position = renderbox.localToGlobal(Offset.zero);
                      double x = position.dx;
                      double y = position.dy;

                      print(x);
                      print(y);


                      GestureBinding.instance.handlePointerEvent(PointerDownEvent(
                        position: Offset(x, y),
                      )); //trigger button up,

                      await Future.delayed(Duration(milliseconds: 500));
                      //add delay between up and down button

                      GestureBinding.instance.handlePointerEvent(PointerUpEvent(
                        position: Offset(x, y),
                      )); //trigger button down


                    },
                    child: Text("Trigger Cick Button A")
                )
              ]
          )
      ),
    );
  }
}