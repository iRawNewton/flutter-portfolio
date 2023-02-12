import 'package:flutter/material.dart';

class MyEducation extends StatefulWidget {
  const MyEducation({super.key});

  @override
  State<MyEducation> createState() => _MyEducationState();
}

class _MyEducationState extends State<MyEducation> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.pink,
      body: Text('data'),
    );
  }
}