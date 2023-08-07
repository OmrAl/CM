import 'package:cash_money/modules/home_screen/home_screen.dart';
import 'package:cash_money/shared/bloc_observer.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_native_splash/cli_commands.dart';
//import 'package:flutter_native_splash/flutter_native_splash.dart';
//import 'package:args/args.dart';


void main() {

  Firebase.initializeApp();
  Bloc.observer = MyBlocObserver();
  // Use cubits...

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // constructor
  // build
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: (((HomeScreen()))),
    );
  }
}
