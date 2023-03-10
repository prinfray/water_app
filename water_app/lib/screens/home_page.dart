import 'package:flutter/material.dart';
import 'main_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Scaffold(
        body: Center(
          // child: Container(
          //   decoration: const BoxDecoration(
          //     image: DecorationImage(
          //       image: AssetImage("assets/images/background.jpg"),
          //       fit: BoxFit.cover,
          //     ),
          //     color: Color(0xFFF86624),
          //   ),
          //   ),

          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                  DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.black54,
                    // image: const DecorationImage(
                    //   image: AssetImage("lib/assets/johnny-brown-V-afy242gY4-unsplash.jpg"),
                    //   fit: BoxFit.cover,
                    // ),
                    // color: const Color(0xFFF86624),
                  ),
                ),
                // Image.asset('lib/assets/johnny-brown-V-afy242gY4-unsplash.jpg'),
                Padding(
                  padding:  EdgeInsets.only(bottom: 180),
                  child: const Text("Welcome to the Workout and Hydration Tracker"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MainMenu()));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // ClipRRect(
                      //   borderRadius: BorderRadius.circular(12),
                      //   child: Image.asset(
                      //     'lib/assets/johnny-brown-V-afy242gY4-unsplash.jpg',
                      //   ),
                      // ),
                      Text("Get Started"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
