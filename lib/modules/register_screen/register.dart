import 'package:cash_money/modules/home_screen/home_screen.dart';
import 'package:cash_money/modules/register_screen/states.dart';
import 'package:cash_money/shared/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit.dart';



class RegisterScreeen extends StatefulWidget {
  const RegisterScreeen({Key? key}) : super(key: key);

  @override
  State<RegisterScreeen> createState() => _RegisterScreeenState();
}

class _RegisterScreeenState extends State<RegisterScreeen> {

  var forkey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var phoneController = TextEditingController();
  var creditController = TextEditingController();
  bool isObscure = true;
  bool isLogin = false;

  @override
  void initState() {
    isObscure;
    isLogin;
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return BlocProvider <RegCubit>(create: (BuildContext context) => RegCubit(),
        child: BlocConsumer<RegCubit, RegisterState>(
        listener: (context, state) {
          if (state is RegisterStateSuccess) {
            Navigator.push(context, CupertinoPageRoute(
                builder: (context) =>  const HomeScreen()));
          }
        },
    builder: (context, state) {
         // var reg = RegCubit.get(context).userRegister(name: 'name', email: 'email', password: 'password', phone: 'phone', credit: 'credit');
      return Scaffold(
        backgroundColor: Colors.brown[900],
        appBar: AppBar(
          leading: buttonLeft(context),
          backgroundColor: Colors.brown[900],
        ),

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
                      'Register',
                      style: Theme
                          .of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(
                        color: Colors.amber,
                      ),
                    ),

                    Text(
                      'Register now to communicate with friends',
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
                      controller: nameController,
                      keyboardType: TextInputType.name,
                      cursorColor: Colors.amber,
                      cursorRadius: const Radius.circular(100.0),
                      onFieldSubmitted: (value) {
                        if (forkey.currentState!.validate()) {

                        }
                      },

                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'enter your name';
                        }
                        return null;
                      },

                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        hintText: 'Enter Your Name',
                        hintStyle: TextStyle(
                            color: Colors.grey),
                        labelText: 'Name',
                        labelStyle: TextStyle(
                          color: Colors.amber,
                        ),
                        prefix: Icon(Icons.person, color: Colors.amber),

                      ),

                      style: const TextStyle(
                        color: Colors.amber,

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
                          return 'enter your email address';
                        }
                        return null;
                      },

                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        hintText: 'Enter Your Email',
                        hintStyle: TextStyle(
                            color: Colors.grey),
                        labelText: 'Email',
                        labelStyle: TextStyle(
                          color: Colors.amber,
                        ),
                        prefix: Icon(Icons.email_outlined, color: Colors.amber),

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

                    TextFormField(
                      controller: phoneController,
                      keyboardType: TextInputType.number,
                      cursorColor: Colors.amber,
                      cursorRadius: const Radius.circular(100.0),
                      onFieldSubmitted: (value) {
                        if (forkey.currentState!.validate()) {

                        }
                      },

                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'The phone number is not true';
                        }
                        return null;
                      },

                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        hintText: 'Enter Your Phone Number',
                        hintStyle: TextStyle(
                            color: Colors.grey),
                        labelText: 'Phone',
                        labelStyle: TextStyle(
                          color: Colors.amber,
                        ),
                        prefix: Icon(Icons.phone, color: Colors.amber),

                      ),

                      style: const TextStyle(
                        color: Colors.amber,

                      ),
                    ),

                    const SizedBox(
                      height: 30,
                    ),

                    TextFormField(
                      controller: creditController,
                      keyboardType: TextInputType.number,
                      cursorColor: Colors.amber,
                      cursorRadius: const Radius.circular(100.0),
                      onFieldSubmitted: (value) {
                        if (forkey.currentState!.validate()) {}
                      },

                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'The credit is not true ';
                        }
                        return null;
                      },

                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        //focusedBorder: UnderlineInputBorder(borderSide: (BorderSide(color: Colors.red))),
                        //focusColor: ,
                        hintText: 'Enter Your Credit Card',
                        hintStyle: TextStyle(
                            color: Colors.grey),
                        labelText: 'Credit',
                        labelStyle: TextStyle(
                          color: Colors.amber,
                        ),
                        prefix: Icon(Icons.credit_card, color: Colors.amber),

                      ),

                      style: const TextStyle(
                        color: Colors.amber,

                      ),
                    ),

                    const SizedBox(
                      height: 30,
                    ),
                    MaterialButton(
                      onPressed: () =>
                      {
                        setState((){
                      if(forkey.currentState!.validate()){
                      RegCubit. get (context).userRegister(
                      name: nameController.text,
                      email: emailController.text,
                      password: passwordController.text,
                      phone: phoneController.text,
                      credit: creditController.text);
                      isLogin = true;
                      } // can not create else because that reverse this condition equal false




                      }),



                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(

                          decoration: const BoxDecoration(color: Colors.grey,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(50))),
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
                                      color: Colors.amber,)),): const Text("REGISTER"

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
