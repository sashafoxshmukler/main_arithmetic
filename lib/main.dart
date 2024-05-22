import 'package:flutter/material.dart';
import 'package:mental_arithmenic/SecondPage.dart';
import 'package:mental_arithmenic/ThirdPade.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => FirstPage(),
      '/second': (context) => SecondPage(),
      '/third': (context) => ThirdPage(),
    },
  ));
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
          child: Text('Начать игру'),
        ),
      ),
    );
  }
}
