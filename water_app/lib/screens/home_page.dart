import 'package:flutter/material.dart';
import 'main_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("Welcome to the Workout and Hydration Tracker"),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainMenu()));
              },
              child: const Text("Continue"),
            )
          ],
        ),
      ),
    );
  }
}
