import 'package:flutter/material.dart';
import 'dart:math';

class SecondPage extends StatelessWidget {
  SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Random _random = Random();
    int _num1 = 1 + _random.nextInt(10);
    int _num2 = 1 + _random.nextInt(10);
    int _answer = _num1 + _num2;
    List<int> _answers = [_random.nextInt(50), _random.nextInt(50), _answer];
    _answers.shuffle();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$_num1 + $_num2 = ?',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  if (_answer == _answers[0]) {
                    Navigator.pushNamed(context, '/third');
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Неправильный ответ!'),
                      ),
                    );
                  }
                },
                child: Text((_answers[0]).toString()),
              ),
              ElevatedButton(
                onPressed: () {
                  if (_answer == _answers[1]) {
                    Navigator.pushNamed(context, '/third');
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Неправильный ответ!'),
                      ),
                    );
                  }
                },
                child: Text((_answers[1]).toString()),
              ),
              ElevatedButton(
                onPressed: () {
                  if (_answer == _answers[2]) {
                    Navigator.pushNamed(context, '/third');
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Неправильный ответ!'),
                      ),
                    );
                  }
                },
                child: Text((_answers[2]).toString()),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
