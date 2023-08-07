import 'dart:async';

import 'package:cash_money/layout/start_screen/state.dart';
import 'package:cash_money/mylist.dart';
//import 'package:flutter/gestures.dart';
//import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:get/get.dart';
import 'cubit.dart';








/*class QesController extends GetxController with SingleGetTickerProviderMixin  {
  late AnimationController _animationController ;
  late Animation _animation;
  // so that we can access our animation outside
  Animation get animation => _animation ;



  // called immediately after the widget is allocated memory
 @override
  void onInit () {
   _animationController = AnimationController(duration: const Duration(seconds: 2),vsync: this);
   _animation = Tween(begin: 0, end: 1).animate(_animationController)
     ..addListener(() {
       // update like setState
     update();
   });
   _animationController.forward();
   super.onInit();


 }


}*/


// ignore: non_constant_identifier_names


//IconData wave = Icons.waving_hand ;

//List<Map<String, Object>> qes = _questions ;

int currentIndex = 0 ;




/*final _questions = [
  {
    'questions': "بسم الله الرحمن الرحيم",'isChecked': false,
    'answers':[
      {"answer text": "بسم الله الرحمن الرحيم" , 'score': true},
      {"answer text": "بسم الله الرحمن الرحيم" , 'score':false},
      {"answer text": "بسم الله الرحمن الرحيم" , 'score':false},
      {"answer text": "بسم الله الرحمن الرحيم" , 'score':false},

    ],
  },
  {
    'questions': "بسم الله الرحمن الرحيم",'isChecked': false,
    'answers':[
      {"answer text": "بسم الله الرحمن الرحيم" , "score":false},
      {"answer text": "بسم الله الرحمن الرحيم" , "score":true},
      {"answer text": "بسم الله الرحمن الرحيم" , "score":false},
      {"answer text": "بسم الله الرحمن الرحيم" , "score":false},

    ],
  },
  {
    'questions': "بسم الله الرحمن الرحيم",'isChecked': false,
    'answers':[
      {"answer text": "بسم الله الرحمن الرحيم" , "score":false},
      {"answer text": "بسم الله الرحمن الرحيم" , "score":false},
      {"answer text": "بسم الله الرحمن الرحيم" , "score":false},
      {"answer text": "بسم الله الرحمن الرحيم" , "score":true},

    ],
  },
  {
    'questions': "بسم الله الرحمن الرحيم",'isChecked': false,
    'answers':[
      {"answer text": "بسم الله الرحمن الرحيم" , "score":false},
      {"answer text": "بسم الله الرحمن الرحيم" , "score":false},
      {"answer text": "بسم الله الرحمن الرحيم" , "score":true},
      {"answer text": "بسم الله الرحمن الرحيم" , "score":false},

    ],
  },
  {
    'questions': "بسم الله الرحمن الرحيم",'isChecked': false,
    'answers':[
      {"answer text": "بسم الله الرحمن الرحيم" , "score":false},
      {"answer text": "بسم الله الرحمن الرحيم" , "score":false},
      {"answer text": "بسم الله الرحمن الرحيم" , "score":true},
      {"answer text": "بسم الله الرحمن الرحيم" , "score":false},

    ],
  },
  {
    'questions': "بسم الله الرحمن الرحيم",'isChecked': false,
    'answers':[
      {"answer text": "بسم الله الرحمن الرحيم" , "score":false},
      {"answer text": "بسم الله الرحمن الرحيم" , "score":false},
      {"answer text": "بسم الله الرحمن الرحيم" , "score":false},
      {"answer text": "بسم الله الرحمن الرحيم" , "score":true},

    ],
  },
  {
    'questions': "بسم الله الرحمن الرحيم",'isChecked': false,
    'answers':[
      {"answer text": "بسم الله الرحمن الرحيم" , "score":false},
      {"answer text": "بسم الله الرحمن الرحيم" , "score":false},
      {"answer text": "بسم الله الرحمن الرحيم" , "score":false},
      {"answer text": "بسم الله الرحمن الرحيم" , "score":false},

    ],
  },
  {
    'questions': "بسم الله الرحمن الرحيم",
    'answers':[
      {"answer text": "بسم الله الرحمن الرحيم" , "score":false},
      {"answer text": "بسم الله الرحمن الرحيم" , "score":true},
      {"answer text": "بسم الله الرحمن الرحيم" , "score":false},
      {"answer text": "بسم الله الرحمن الرحيم" , "score":false},

    ],
  },
  {
    'questions': "بسم الله الرحمن الرحيم",
    'answers':[
      {"answer text": "بسم الله الرحمن الرحيم" , "score":true},
      {"answer text": "بسم الله الرحمن الرحيم" , "score":false},
      {"answer text": "بسم الله الرحمن الرحيم" , "score":false},
      {"answer text": "بسم الله الرحمن الرحيم" , "score":false},

    ],
  },
  /*{
    'questions': "",
    'answers':[
      {"answer text": "" , "score":false},
      {"answer text": "" , "score":false},
      {"answer text": "" , "score":false},
      {"answer text": "" , "score":false},

    ],
  },*/


];*/



//Map map = Map<String, bool>(); //create and call late

/*Map <String , bool> mip = {
  'i love you so much': true,
  'i love you so muc': false,
  'i love you so mue': false,
  'i love you so muh': false,
  'i love you so ahmed': false,
  'i love you so ch': false,
  'i love you so sh': false,
  'i love you so o': true,
  'i love you so v': false,
  'i love you so n': true,
  'i love you so u': false,
  'i love you so i': false,
  'i love you so l': false,
  'i love you so w': false,
  'i love you so y': false,
  'i love you so a': true,


};*/






var myFunction = _QessState().startTimer();


//@immutable
class Qess extends StatefulWidget {
  const Qess({Key? key}) : super(key: key);


  @override
  State<Qess> createState() => _QessState();
}

class _QessState extends State<Qess> with TickerProviderStateMixin {
  final bool? isCheck ;
  final Qes? qees ;
  late final AnimationController _controller ;
  _QessState({this.qees , this.isCheck});
  List<Qes> qes = questions();

  Timer ? timer ;
  int timeLeft = 3 ;


   void startTimer(){
    timer = Timer.periodic(const Duration(seconds: 1),(timer){
      if(timeLeft > 0 )
      {
        setState(() {
          timeLeft --;
        });
      }
      else{
        timer.cancel();
        setState(() {
         colors = false ;
         currentIndex ++ ;
         timeLeft = 5 ;
        });
      }

    });
  }





  Ans ? isSelected;

  int points = 0;
  bool endQes = false;

  bool colors = false;



  void questionIndex(bool score) {

    setState(() {
      if (score == true) {
        colors = true;
        points ++;

      }

      startTimer() ;


      //_controller.forward();
      //_controller.duration;
     // nextQes();
    });

  }

  /*void nextQes() {

    if (timer?.tick == 3) {
      currentIndex ++;
      setState(() {
        colors = false;
        //_controller.stop();
      });
    }
    else {
      return nextQes() ;
    }
  }*/


  @override
  void initState() {
    currentIndex = 0 ;
    colors = false ;
    super.initState();
    _controller = AnimationController(vsync: this) ;
  }

  @override
  void dispose () {
    _controller.dispose();
    super.dispose();


  }

  @override
  Widget build(BuildContext context) {
    //QesController controller = Get.put(QesController());
    return BlocProvider <QesCubit>(create: (BuildContext context) => QesCubit(),
        child: BlocConsumer<QesCubit, QesState>(
            listener: (context, state) {

            },
            builder: (context, state) {
              // Omar or = omar[currentIndex];
              // Map ma = mip;

              /*for(int i =0 ; i < or.name1 ; i++){
              currentIndex = i ;
            }*/
              //Regs n = RegCubit.get(context).userRegister(name: 'name', email: 'email', password: 'password', phone: 'phone', credit: 'credit');

              return Scaffold(
                  backgroundColor: Colors.brown[900],
                  body: Padding(padding: const EdgeInsets.only(top: 30),
                      child: Padding(
                          padding: const EdgeInsetsDirectional.all(10),
                          child: Column(children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              //ROW 1
                              children: [
                                const Text('Welcome',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white
                                  ),
                                ),
                                const Icon(
                                  Icons.waving_hand,
                                  color: Colors.amber,),

                                const Spacer(flex: 1,),
                                Row(
                                  children: [
                                    const SizedBox(
                                      height: 30,
                                      width: 50,
                                      child: Image(
                                        image: AssetImage(
                                            'assets/images/icon.png'),
                                        width: 10,
                                        height: 10,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.only(
                                          end: 8),
                                      child: Column(
                                        children: [Text('$points',
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.white,
                                          ),),
                                        ],
                                      ),
                                    ),

                                  ],
                                ),


                              ],
                            ), Padding(padding: const EdgeInsets.only(top: 70,),
                              child: Center(
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(25)),),
                                  width: double.infinity,
                                  height: 100,
                                  child: Directionality(
                                    textDirection: TextDirection.rtl,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 0),
                                      child: Center(
                                        child: Text(qes[currentIndex].question,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 30,
                                            color: Colors.amber,
                                          ),
                                        ),


                                        /* child: AnimatedTextKit(
                                    repeatForever: false,
                                    totalRepeatCount: 1,
                                    onTap: (){

                                    },
                                    animatedTexts:  [
                                     RotateAnimatedText(or.name1.substring(currentIndex),
                                       rotateOut: false,
                                       alignment: const AlignmentDirectional(0, 100),
                                       duration: const Duration(seconds: 1),
                                 ),
                                ],
                                ),*/
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ), const SizedBox(
                              height: 50,
                            ),
                            Column(
                              children: // i use this kind of map when i have the list of map
                                qes[currentIndex].answers.map((e) =>
                                    AnswerButton(answer: e.answer ,
                                      isCorrect: colors ?  e.isCorrect ? Colors.green[900]
                                        : Colors.red[900]
                                        : Colors.grey,
                                      onTaP:(){ questionIndex(e.isCorrect);},)).toList()
                                      // to work this command you should put it in widget

                                // i use this kind of list when i have the list not map
                              /* ...(qes[currentIndex]['questions'] as List<Map<String , Object>>).map(e)) =>
                               Answer(answer['answers']as String? , colorText: colors ? answer['score'] as bool?
                               Colors.green[900]
                               : Colors.red[900]
                                : Colors.grey,
                                tapText: (){
                                questionIndex(answer['score'] as bool},*/

                                  // return just widget
                            ),
                          ]
                          ))));
            }
        )
    );
  }


//const SizedBox(height: 50,)

/*:




                        ),*/ //const SizedBox(height: 50,)
//left: select ? ,

/*ElevatedButton (
                         onPressed:()   {




                        setState(() {



                          if (ma.values.elementAt(currentIndexx) == true) {
                            colors = false;

                            points ++;
                          }
                          else {
                            colors = color1 = false ;
                          }
                        });
                      } ,

                        child: Padding(
                          padding: const EdgeInsets.only(top: 70),
                          child: Center(
                            child: Container(
                              decoration: BoxDecoration(
                                color: colors ? Colors.grey : (color1)
                                    ? Colors.green[900]
                                    : Colors.red[900],
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(50)),),
                              width: double.infinity,
                              height: 50,
                              child: Directionality(
                                textDirection: TextDirection.rtl,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      right: 10, top: 0),
                                  child: Center(
                                    child: Center(
                                      child: Text(ma.keys.elementAt(currentIndexx ),
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25,
                                          color: Colors.amber,
                                        ),
                                      ),
                                        /*child: AnimatedTextKit(
                                          repeatForever: false,
                                          totalRepeatCount: 1,
                                            onTap: () {
                                              setState(() {
                                                if (ma.values.elementAt(currentIndexx) == true) {
                                                    colors = false;

                                                  points ++;
                                                }
                                                else {
                                                  colors = color1 = false ;
                                                }
                                                //repeat();
                                                ma.keys.elementAt(currentIndexx ++);
                                                or.name1.substring(currentIndex ++) ;

                                              });
                                            },

                                            animatedTexts:  [
                                          RotateAnimatedText(ma.keys.elementAt(currentIndexx),
                                            rotateOut: false,
                                            alignment: const AlignmentDirectional(0, 100),
                                            duration: const Duration(seconds: 2),
                                          ),
                                        ],
                                        ),*/
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                       ),*/


/* currentIndex ++;
                          currentIndexx ++;
                          currentIndexxx ++;
                          currentIndexxxx ++;
                          currentIndexxxxx ++;*/

/*ElevatedButton (

                        onPressed: ()  {

                        setState(() {

                          if (ma.values.elementAt(currentIndexxx) == true) {
                            colors = false;

                            points ++;
                          }
                          else {
                            colors = color2 = false ;
                          }

                        });
                      },

                        child: Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Center(
                            child: Container(
                              decoration: BoxDecoration(
                                color: colors ? Colors.grey : (color2)
                                    ? Colors.green[900]
                                    : Colors.red[900],
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(50)),),
                              width: double.infinity,
                              height: 50,
                              child: Directionality(
                                textDirection: TextDirection.rtl,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      right: 10, top: 0),
                                  child: Center(
                                    child: Center(
                                    // child: DefaultTextStyle(
                                      child: Text(ma.keys.elementAt(currentIndexxx ),
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25,
                                          color: Colors.amber,
                                        ),
                                      ),
                                        /*child: AnimatedTextKit(
                                          repeatForever: false,
                                          totalRepeatCount: 1,
                                          //isRepeatingAnimation: ,
                                            onTap: (){

                                              setState(() {
                                                if (ma.values.elementAt(currentIndexxx) == true) {

                                                    colors = false;

                                                  points ++;
                                                }
                                                else {
                                                  colors = color2 = false ;
                                                }
                                                //repeat();
                                                ma.keys.elementAt(currentIndexxx ++) ;

                                              });
                                            },
                                            animatedTexts:  [
                                          RotateAnimatedText(ma.keys.elementAt(currentIndexxx),
                                            rotateOut: false,
                                            alignment: const AlignmentDirectional(0, 100),
                                            duration: const Duration(seconds: 2),
                                          ),
                                        ],
                                        ),*/
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                       ),


                   ElevatedButton(
                     onPressed: () async {


                        setState(() {




                          if (ma.values.elementAt(currentIndexxxx) == true) {
                            colors = false;

                            points ++;
                          }
                          else {
                            colors = color3 = false ;
                          }

                        });
                      },

                        child: Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Center(
                            child: Container(
                              decoration: BoxDecoration(
                                color: colors ? Colors.grey : (color3)
                                    ? Colors.green[900]
                                    : Colors.red[900],
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(50)),),
                              width: double.infinity,
                              height: 50,
                              child: Directionality(
                                textDirection: TextDirection.rtl,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      right: 10, top: 0),
                                  child: Center(
                                    child: Center(
                                      //child: DefaultTextStyle(
                                      child: Text(ma.keys.elementAt(currentIndexxxx ),
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25,
                                          color: Colors.amber,
                                        ),
                                      ),
                                        /*child: AnimatedTextKit(
                                          repeatForever: false,
                                          totalRepeatCount: 1,
                                            onTap: (){
                                              setState(() {
                                                if (ma.values.elementAt(currentIndexxxx) == true) {
                                                    colors = false;

                                                  points ++;
                                                }
                                                else {
                                                  colors = color3 = false ;
                                                }
                                                //repeat();
                                                ma.keys.elementAt(currentIndexxxx ++);

                                              });
                                            },

                                            animatedTexts:  [
                                          RotateAnimatedText(ma.keys.elementAt(currentIndexxxx),
                                            rotateOut: false,
                                            alignment: const AlignmentDirectional(0, 100),
                                            duration: const Duration(seconds: 2),
                                          ),
                                        ],
                                        ),*/
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                    ),



                    ElevatedButton(
                      onPressed: ()  async {




                        setState(() {

                          if (ma.values.elementAt(currentIndexxxxx) == true) {
                            colors = false;

                            points ++;
                          }
                          else {
                            colors = color4 = false ;
                          }

                        });

                      },

                        child: Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Center(
                            child: Container(
                              decoration: BoxDecoration(
                                color: colors ? Colors.grey : (color4)
                                    ? Colors.green[900]
                                    : Colors.red[900],
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(50)),),
                              width: double.infinity,
                              height: 50,
                              child: Directionality(
                                textDirection: TextDirection.rtl,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      right: 10, top: 0),
                                  child: Center(
                                    child: Center(
                                      //child: DefaultTextStyle(
                                      child: Text(ma.keys.elementAt(currentIndexxxxx ),
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25,
                                          color: Colors.amber,
                                        ),
                                      ),
                                        /*child: AnimatedTextKit(
                                          repeatForever: false,
                                          totalRepeatCount: 1,
                                          onTap: (){
                                            setState(() {
                                              if (ma.values.elementAt(currentIndexxxxx) == true) {
                                                  colors = false;

                                                points ++;
                                              }
                                              else {
                                                colors = color1 = false ;
                                              }
                                              //repeat();
                                              ma.keys.elementAt(currentIndexxxxx ++) ;

                                            });
                                          },
                                          //onNext: (),

                                          //displayFullTextOnTap:
                                          animatedTexts:  [

                                          RotateAnimatedText(ma.keys.elementAt(currentIndexxxxx),
                                            rotateOut: false,
                                            alignment: const AlignmentDirectional(0, 100),
                                            duration: const Duration(seconds: 2),
                                          ),
                                        ],
                                        ),*/
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),*/
}

class AnswerButton extends StatelessWidget {

  final String? answer ;
  final Color? isCorrect ;
  // create the isCorrect from type of Color to not toggle between the colors and give every color it color
  final Function? onTaP ;

  const AnswerButton({Key? key, this.answer , this.isCorrect , this.onTaP}) : super(key: key);


  @override
  Widget build(BuildContext context) {
   // QesController controller = Get.put(QesController());
    return InkWell(
      onTap: () {
        onTaP!() ;

       /* if (isSelected == null) {
          if (ans.isCorrect) {}
        }
        setState(() {
          isSelected = ans;
        });*/
      },

      //Qes qes;

      /* setState(() {

          if (ma.values.elementAt(currentIndexx) == true) {
            colors = false;

            points ++;
          }
          else {
            colors = color1 = false ;
          }
        });*/

      child: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            color: isCorrect,//isSelected != null ? Colors.red[900] : Colors.green[900],
            borderRadius: const BorderRadius.all(
                Radius.circular(50)),),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Padding(
              padding: const EdgeInsets.only(
                  right: 10, top: 0),
              child: Center(
                child: Center(
                  child: Text(answer!,//timeLeft == 0 ? answer! : myFunction ,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.amber,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}












