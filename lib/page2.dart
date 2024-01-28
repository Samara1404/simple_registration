import 'package:flutter/material.dart';

class MyText extends StatefulWidget {
  const MyText({super.key});

  @override
  State<MyText> createState() => _MyTextState();
}

class _MyTextState extends State<MyText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'name',
                  hintText: 'Samara',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}