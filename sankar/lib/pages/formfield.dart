import 'package:flutter/material.dart';

class FormApp extends StatelessWidget {
  const FormApp({super.key});

  @override
  Widget build(BuildContext context) {
    //variable functions
    final sankar = GlobalKey<FormState>();

    return Scaffold(
      body: Form(
        key: sankar,
        child: Column(
          children: [
            TextFormField(),
          ],
        ),
      ),
    );
  }
}
