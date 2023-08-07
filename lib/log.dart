
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'modules/home_screen/home_screen.dart';
import 'modules/register_screen/register.dart';


class LoginScreeen1 extends StatefulWidget {
  const LoginScreeen1({Key? key}) : super(key: key);

  @override
  State<LoginScreeen1> createState() => _LoginScreeenState();
}

class _LoginScreeenState extends State<LoginScreeen1> {

  var forkey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var register = const RegisterScreeen();
  bool isObscure = true;

  @override
  void initState() {
    isObscure;
    super.initState();
  }


  @override
  Widget build(BuildContext context) {

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
                                return 'password is too short';
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

                              }
                            },

                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'password is too short';
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
                                isObscure ? Icons.visibility_off_outlined : Icons
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
                            onPressed: () =>
                            {
                              Navigator.push(context, CupertinoPageRoute(
                                  builder: (context) =>  HomeScreen())),

                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(

                                decoration: const BoxDecoration(color: Colors.grey,
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(50)),),
                                width: double.infinity,
                                height: 30,
                                child: const Center(
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'LOGIN',
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
                          MaterialButton(
                            onPressed: () =>
                            {
                              Navigator.push(context, CupertinoPageRoute(
                                  builder: (context) => const RegisterScreeen())),

                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(

                                decoration: const BoxDecoration(color: Colors.grey,
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(50)),),
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
                        ],

                      ),

                    ),

                  ),
                ),
              ),
            );
          }
}
