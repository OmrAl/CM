import 'package:flutter/material.dart';

Duration duration = const Duration(milliseconds: 1000);

AnimationController  animationController = animationController ;

@override
void initState(){
  dynamic animationDuration;
  animationController = AnimationController(vsync:animationDuration, duration: animationDuration,);}

Animation<double> animation = Tween<double>(begin: 0 , end: 1).animate(animationController);


