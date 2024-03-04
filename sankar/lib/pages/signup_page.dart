import 'package:flutter/material.dart';
import 'package:sankar/main.dart';
import 'package:sankar/pages/login_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    String? confirmPasswordValidator(String? value, String? confirmPassword) {
      if (value != confirmPassword) {
        return 'Passwords do not match';
      }
      return null;
    }

    final _formkey = GlobalKey<FormState>();

    String? password;
    String? confirmPassword;
    final space = SizedBox(
      height: height * 0.02,
    );
    return Scaffold(
        body: Center(
          child: Container(
            margin:
                EdgeInsets.only(top: 60.0, left: 40.0, right: 40.0, bottom: 30.0),
            child: Column(
              children: [
                Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
                space,
                Text('Create your account'),
                space,
                Form(
                  key: _formkey,
                  child: Expanded(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.pink.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              labelText: 'Username',
                              floatingLabelBehavior: FloatingLabelBehavior.never,
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 16.0),
                              border: InputBorder.none,
                            ),
                            validator: (value) {
                              if (value!.isEmpty ||
                                  !RegExp(r'^[a-zA-Z0-9_]{3,16}$')
                                      .hasMatch(value!)) {
                                return "Enter correct Username";
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
                              prefixIcon: Icon(Icons.email),
                              labelText: 'Email',
                              floatingLabelBehavior: FloatingLabelBehavior.never,
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 16.0),
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
                              prefixIcon: Icon(Icons.password),
                              labelText: 'Password',
                              floatingLabelBehavior: FloatingLabelBehavior.never,
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 16.0),
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
                        space,
                        Container(
                          // cofirm password
                          decoration: BoxDecoration(
                            color: Colors.pink.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.password),
                              labelText: 'Confirm Password',
                              floatingLabelBehavior: FloatingLabelBehavior.never,
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 16.0),
                              border: InputBorder.none,
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please confirm your password';
                              }
                              confirmPassword = value;
                              return confirmPasswordValidator(
                                  password, confirmPassword);
                            },
                          ),
                        ),
                        space,
                        Container(
                          padding: EdgeInsets.all(20.0),
                          width: double.maxFinite,
                          // height: 16.0,
                          child: TextButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.purpleAccent),
                            ),
                            onPressed: () {
                              if (_formkey.currentState!.validate()) {
                                // Form is valid, passwords match, proceed with form submission
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text('Account Created!')));
                              }
                            },
                            child: Container(
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(
                                    fontSize: 23.0,
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                        ),
                        SizedBox(height: 10.0,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Already have an account?',
                              style: TextStyle(
                                  color: Colors.grey, fontWeight: FontWeight.bold),
                            ),
                            TextButton(
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.purple,
                                  fontSize: 23.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MyApp(),
                                    ));
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
