import 'package:flutter/material.dart';

class HomePageContainer extends StatelessWidget {
  const HomePageContainer({super.key});
  void onPressed() {}
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 102, 0, 165),
              const Color.fromARGB(255, 55, 1, 89),
            ],
          ),
        ),
        child: Column(
          spacing: 40,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/quiz-logo.png', width: 200),
            Text(
              'Learn Flutter the fun way!',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            FilledButton(
              onPressed: onPressed,
              child: Text(
                'Start Quiz',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
