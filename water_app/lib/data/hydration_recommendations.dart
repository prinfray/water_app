import 'package:flutter/material.dart';
import '../screens/settings.dart';

class HydrationRecommendations extends StatelessWidget {
  const HydrationRecommendations({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Settings()),
            );
          },
        ),
      ]),
    );
  }
}