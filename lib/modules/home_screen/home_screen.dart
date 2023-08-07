import 'package:cash_money/layout/qes_screen/qes.dart';
import 'package:cash_money/layout/settings_screen/settings.dart';
import 'package:cash_money/layout/start_screen/start.dart';
import 'package:cash_money/modules/home_screen/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit.dart';

bool enable = false;
bool color = false ;
int counter = 0 ;

bool open() {

  if (counter == 0) {
    color = true ;
    return !enable ;
  } else {
    color = false ;
    return enable ;
  }

}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}



class _HomeScreenState extends State<HomeScreen> {

  List <bool> toggle = [
    false,
  ];


  @override
  void initState() {
    color = false ;
    counter ;
    super.initState();
  }





  /*void delete() {
    setState(() {
      counter = 0 ;
    });
  }*/


  @override
  Widget build(BuildContext context) {
    return BlocProvider <HomeCubit>(
      create: (BuildContext context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {

        },
        builder: (context, state) {
          //var modle = HomeCubit.get(context).regs;
          return Scaffold(
            //backgroundColor: HexColor(#6E2C00),
            backgroundColor: const Color.fromARGB(110, 44, 0, 0),
            body: Center(child: Padding(padding: const EdgeInsets.only(top: 20),
              child: Padding(padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    // borderRadius: BorderRadius.circular(500),
                    //clipBehavior: Clip.,
                    Image.asset('assets/images/cm1.png'),
                    const SizedBox(
                      height: 40,
                    ),

                    const Row(
                    ),


                    // or const Image( image: AssetImage('assets/images/Cash Money1.png'),

                    //Padding(padding: EdgeInsetsDirectional.only(start: 20),

                    MaterialButton(

                      onPressed: open() ? () =>
                      {




                        Navigator.push(context,
                            CupertinoPageRoute(
                                builder: (context) =>  const Qess())),

                      } : null,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: (color == true) ? Colors.grey : Colors.grey[700],
                            borderRadius: const BorderRadius.all(
                                Radius.circular(50)),),
                          width: double.infinity,
                          height: 50,
                          child: const Center(
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.only(top: 8),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Start',

                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,


                                      ),

                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),


                                  ],
                                ),
                              ],
                            ),
                          ),

                        ),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () =>
                      {
                        Navigator.push(context, CupertinoPageRoute(
                            builder: (context) => const MyList())),

                      },
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(

                          decoration: const BoxDecoration(color: Colors.grey,
                            borderRadius: BorderRadius.all(
                                Radius.circular(50)),),
                          width: double.infinity,
                          height: 50,
                          child: const Center(
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.only(top: 8),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'ََQuestions',

                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,


                                      ),

                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                        ),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () =>
                      {
                        Navigator.push(context, CupertinoPageRoute(
                            builder: (context) => const SettingsScreeen())),

                      },
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(

                          decoration: const BoxDecoration(color: Colors.grey,
                            borderRadius: BorderRadius.all(
                                Radius.circular(50)),),
                          width: double.infinity,
                          height: 50,
                          child: const Center(
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.only(top: 8),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Settings',

                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,


                                      ),

                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                        ),
                      ),
                    ),
                  ],
                ),
              ),

            ),
            ),

          );
        },
      ),
    );
    /* child: MaterialButton(
          onPressed: () =>
          {
            Navigator.push(context, CupertinoPageRoute(builder: (context) => const RegisterScreeen())),

          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(

              decoration: const BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.all(Radius.circular(50)),),
              width: double.infinity,
              height: 30,
              child: const Center(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Register',

                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,

                          ),

                        ),
                        SizedBox(
                          height: 30,
                        ),


                      ],
                    ),
                  ],
                ),
              ),

            ),

          ),

        ),
      ),
    );*/
  }
}

