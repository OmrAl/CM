import 'package:cash_money/layout/settings_screen/state.dart';
import 'package:cash_money/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit.dart';

//import 'package:flutter_native_splash/flutter_native_splash.dart';
//Regs reg = Regs(uId: 'uId', email: 'email', password: 'password',name: 'name', phone: 'phone', credit: 'credit', isEmailVerified: false);


class SettingsScreeen extends StatefulWidget {
  const SettingsScreeen({Key? key}) : super(key: key);

  @override
  State<SettingsScreeen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreeen> {

  var forkey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var phoneController = TextEditingController();
  var creditController = TextEditingController();
  bool isObscure = true;

  @override
  void initState() {
    isObscure;
    super.initState();
  }
  /*late final userData;

  Future <List<Regs>> allUsers() async {
    final db = FirebaseFirestore.instance;
    final snapshot = await db.collection('Users').get();
     userData = snapshot.docs.map((e) =>
        Regs.fromJson(e as Map<String, dynamic>)).toList();
    return userData;
  }

  Future<Regs> getUsers() async {
    final db = FirebaseFirestore.instance;
    final snapshot = await db.collection('Users')
        .where('email', isEqualTo: '')
        .get();
    final userData = snapshot.docs
        .map((e) => Regs.fromJson(e as Map<String, dynamic>))
        .single;
    return userData;
  }*/







 /* @override
  setState(() {
  nameController.text = widget.name;
  descriptionController.text = widget.description;
  });*/

  @override
 /* void setState(VoidCallback text) {
    emailController.text ;
    super.setState(text);
  }*/

  // FocusNode focusNode;

/*  @override
  void initState() {
    focusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
   focusNode.dispose();
    super.dispose();
  }*/


  @override
  Widget build(BuildContext context) {
    return BlocProvider <SettCubit>(create: (BuildContext context) => SettCubit(),
        child: BlocConsumer<SettCubit, SettingsState>(
        listener: (context, state) {},
    builder: (context, state) {
   /* FutureBuilder(builder: (context , snapshot) {
      if (snapshot.hasData) {
       // RegCubit user = snapshot.data as RegCubit;
      }

      return const Scaffold();
    }
    );*/

    /* var reg =  RegCubit.get(context).userRegister(
          name: nameController.text,
          email: emailController.text,
          password: passwordController.text,
          phone: phoneController.text,
          credit: creditController.text);*/
      return Scaffold(
        backgroundColor: Colors.brown[900],
        appBar: AppBar(
          leading: buttonLeft(context),
          backgroundColor: Colors.brown[900],
        ),

        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding:  const EdgeInsets.all(20.0),
              child: Form(
                key: forkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Settings',
                      style: Theme
                          .of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(
                          color: Colors.white
                      ),
                    ),

                    Text(
                      'Update Your Data ',
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
                        if(forkey.currentState!.validate()){

                        }



                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(

                          decoration: const BoxDecoration(color: Colors.grey,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(50))),
                          width: double.infinity,
                          height: 50,
                          child: const Center(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Update',
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(
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
