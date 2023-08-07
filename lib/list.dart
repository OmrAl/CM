import 'package:cash_money/shared/components/components.dart';
import 'package:flutter/material.dart';


class Pop extends StatelessWidget {

  const Pop(Map<String, bool> map, {Key? key} ) : super(key: key);




  @override
  Widget build(BuildContext context) {
    return  Directionality(textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.brown[800],
        appBar: AppBar(
          leading: buttonRight(context),
          backgroundColor: Colors.brown[900],
        ),
        body: const SizedBox(
          height: 50,
          width: double.infinity,
          child:Text('',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),

          ),
        ),
      ),
    );
  }
}


