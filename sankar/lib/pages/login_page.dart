import 'package:flutter/material.dart';
import 'package:sankar/pages/home_page.dart';
import 'package:sankar/pages/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    String? password;
    final space = SizedBox(
      height: height * 0.04,
    );
    return Container(
      child: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.only(
              top: 100.0, left: 40.0, right: 40.0, bottom: 20.0),
          child: Expanded(
            child: Column(
              children: [
                Icon(
                  Icons.person,
                  size: 100.0,
                ),
                space,
                Container(
                  decoration: BoxDecoration(
                    color: Colors.pink.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Padding(padding: EdgeInsets.only(right: 10.0,left: 10.0),
                      child: Icon(Icons.email),),
                      labelText: 'Email',
                      labelStyle: TextStyle( ),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                      border: InputBorder.none,
                    ),
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}')
                              .hasMatch(value!)) {
                        return "Enter correct email address";
                      }
                      return null;
                    },
                  ),
                ),
                space,
                Container(
                  decoration: BoxDecoration(
                    color: Colors.pink.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Padding(padding: EdgeInsets.only(right: 10.0,left: 10.0),
                        child: Icon(Icons.password),),
                      labelText: 'Password',
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                      border: InputBorder.none,
                    ),
                    obscureText: true,
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                              .hasMatch(value!)) {
                        return "Enter correct Password";
                      }
                      password = value;
                      return null;
                    },
                    // onSaved: (value) {
                    //   password = value!;
                    // },
                  ),
                ),
                SizedBox(height: height*0.05,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [

                    TextButton(
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.purpleAccent)),


                      onPressed: () {
                        // if (_formKey.currentState!.validate()) {
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //         builder: (context) => HomePage(),
                        //       ));
                        // }
                        Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomePage(),
                                  ));
                      },
                      child: Container(
                        padding: EdgeInsets.all(15.0),
                          child: Text('Login',style: TextStyle(color: Colors.white),)),
                    ),
                    SizedBox(width: 30.0),
                    TextButton(
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.purpleAccent)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpPage(),
                            ));
                      },
                      child: Container(
                        padding: EdgeInsets.all(15.0),
                        child: Text('Sign Up',style: TextStyle(color: Colors.white),),),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
