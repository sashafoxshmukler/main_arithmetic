import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Правильно',
              style: TextStyle(fontSize: 24, color: Colors.blue),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/second');
              },
              child: const Text(
                'Еще раз',
                style: TextStyle(fontSize: 24, color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
