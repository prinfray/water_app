import 'package:flutter/material.dart';
import 'package:water_app/screens/settings.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Settings()),
            );
          },
        ),
      ]),
    );
    ;
  }
}
