import 'dart:core';
import 'package:cash_money/modules/login_screen/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../cach.dart';

import '../home_screen/home_screen.dart';
import '../register_screen/register.dart';
import 'cubit.dart';



class LoginScreeen extends StatefulWidget {
  const LoginScreeen({Key? key}) : super(key: key);

  @override
  State<LoginScreeen> createState() => _LoginScreeenState();
}

class _LoginScreeenState extends State<LoginScreeen> {
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

  var forkey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var register = const RegisterScreeen();
  bool isObscure = true;
  bool isLogin = false ;

  @override
  void initState() {
    isObscure;
    isLogin;
    super.initState();
  }


  bool  open() {

  if(isLogin == false) {
    return !isLogin ;
  }

  // false => means not have a value which equal 0

  else {
    isLogin = true;
    return isLogin ;
  }

    // true => means have a value which equal 1


  }



  @override
  Widget build(BuildContext context) {
    return BlocProvider <LoginCubit>(
      create: (BuildContext context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginState>(
          listener: (context, state) {
            if (state is LoginStateError) {
              showToast();
            }

            if (state is LoginStateSuccess) {
              CacheHelper.saveData(
                key: 'uId',
                value: state.uid,
              ).then((value)
              {
                Navigator.push(
                    context , CupertinoPageRoute(builder: (context) =>  const HomeScreen()));

              });
            }


          },
          builder: (context, state) {
           // var Auth = LoginCubit.get(context).;
            return Scaffold(
              backgroundColor: Colors.brown[900],

              body: Center(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Form(
                      key: forkey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'LOGIN',
                            style: Theme
                                .of(context)
                                .textTheme
                                .headlineLarge
                                ?.copyWith(
                                color: Colors.amber
                            ),
                          ),

                          Text(
                            'Login now to communicate with friends',
                            style:
                            Theme
                                .of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                              color: Colors.grey,
                            ),
                          ),

                          const SizedBox(
                            height: 30.0,
                          ),

                          TextFormField(
                            controller: emailController,
                            keyboardType: TextInputType.emailAddress,
                            cursorColor: Colors.amber,
                            cursorRadius: const Radius.circular(100.0),
                            onFieldSubmitted: (value) {
                              if (forkey.currentState!.validate()) {

                              }
                            },

                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Email is not correct';
                              }
                             
                              return null;
                            },

                            decoration: const InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              hintText: 'Enter Your Email',
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              labelText: 'Email',
                              labelStyle: TextStyle(
                                color: Colors.amber,

                              ),
                              prefix: Icon(Icons.email
                                , color: Colors.amber,),

                              // counter: // count the widgets

                            ),
                            style: const TextStyle(
                              color: Colors.amber,
                            ),
                          ),

                          const SizedBox(
                            height: 30.0,
                          ),

                          TextFormField(
                            controller: passwordController,
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: isObscure,
                            cursorColor: Colors.amber,
                            cursorRadius: const Radius.circular(100.0),
                            onFieldSubmitted: (value) {
                              if (forkey.currentState!.validate()) {
                                LoginCubit.get(context).login(
                                    email: emailController.text,
                                    password: passwordController.text);


                              }
                            },

                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Password is too short';
                              }
                              return null;
                            },

                            decoration: InputDecoration(
                              enabledBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              hintText: 'Enter Your Password',
                              hintStyle: const TextStyle(
                                  color: Colors.grey),
                              labelText: 'Password',
                              labelStyle: const TextStyle(
                                color: Colors.amber,
                              ),
                              prefix: const Icon(
                                  Icons.lock_outlined, color: Colors.amber),
                              suffixIcon: IconButton(icon: Icon(
                                isObscure
                                    ? Icons.visibility_off_outlined
                                    : Icons
                                    .visibility_outlined,
                                color: Colors.amber,
                              ),
                                onPressed: () {
                                  setState(() {
                                    isObscure = !isObscure;
                                  });
                                },
                              ),
                            ),

                            style: const TextStyle(
                              color: Colors.amber,

                            ),
                          ),

                          const SizedBox(
                            height: 30.0,
                          ),

                          MaterialButton(
                            onPressed: open () ? () =>
                            {
                              setState(() {
                                if (forkey.currentState!.validate()) {
                                  isLogin = true;
                                  Navigator.push(
                                      context , CupertinoPageRoute(builder: (context) =>  const HomeScreen()));

                                }

                                else{
                                isLogin = false ;
                                }

                              }),
                            //Navigator.pop(context),
                            }: null ,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(

                                decoration: const BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(50)),),
                                width: double.infinity,
                                height: 50,
                                child:  Center(
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment
                                            .center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children:[
                                          isLogin? const SizedBox( height: 30 , width: 30, child:Center( child: CircularProgressIndicator(
                                            color: Colors.amber,)),): const Text("LOGIN"

                                            ,style:  TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 50,
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
                                  builder: (
                                      context) => const RegisterScreeen())),

                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(

                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(50)),),
                                width: double.infinity,
                                height: 30,
                                child: const Center(
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment
                                            .center,
                                        children: [
                                          Text(
                                            'Register Now',

                                            style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey,
                                            ),

                                          ),
                                          SizedBox(
                                            height: 25,
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
              ),
            );
          }
      ),
    );
  }
}
