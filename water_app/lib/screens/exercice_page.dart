import 'package:flutter/material.dart';


class ExerciseTracking extends StatelessWidget {
  const ExerciseTracking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exercise Tracking"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            const Text("Exercise Graph"),
            const Text("Exercise History"),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Add Exercise"),
            ),
          ],
        ),
      ),
    );
  }
}