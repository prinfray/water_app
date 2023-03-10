import 'package:flutter/material.dart';
import 'package:water_app/screens/profile.dart';
import 'package:water_app/screens/settings.dart';

import '../components/navbar_custom.dart';
import '../data/hydration_recommendations.dart';
import '../data/weather_location_suggestions.dart';
import 'exercice_page.dart';
import 'hydration_page.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Main Menu"),
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            title: const Text("Water Tracking"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const WaterTracking()));
            },
          ),
          ListTile(
            title: const Text("Exercise Tracking"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ExerciseTracking()));
            },
          ),
          ListTile(
            title: const Text("Hydration Recommendations"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const HydrationRecommendations()));
            },
          ),
          ListTile(
            title: const Text("Weather and Location Based Suggestions"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const WeatherLocationSuggestions()));
            },
          ),
          ListTile(
            title: const Text("Profile"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Profile()));
            },
          ),
          ListTile(
            title: const Text("Settings"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Settings()));
            },
          ),
        ],
      ),
      bottomNavigationBar: CustomNavBar(
        selectedIndex: _selectedIndex,
        onItemTap: (index) {
          // Handle navigation to different screens based on index
          setState(() {
            _selectedIndex = index;
          });
          switch (index) {
            case 0:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const WaterTracking()),
              );
              break;
            case 1:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => const ExerciseTracking()),
              );
              break;
            case 2:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Settings()),
              );
              break;
            default:
              break;
          }
        },
      ),
      
    );
  }
}
