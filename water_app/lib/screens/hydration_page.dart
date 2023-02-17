import 'package:flutter/material.dart';


class WaterTracking extends StatelessWidget {
  const WaterTracking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Water Tracking"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            const Text("Water Intake Graph"),
            const Text("Water Intake History"),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Add Water Intake"),
            ),
          ],
        ),
      ),
    );
  }
}