import 'package:flutter/material.dart';
import 'package:water_app/screens/profile.dart';
import 'package:water_app/screens/settings.dart';

import '../data/hydration_recommendations.dart';
import '../data/weather_location_suggestions.dart';
import 'exercice_page.dart';
import 'hydration_page.dart';


class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text("Main Menu"),
),
body: Container(
child: Column(
children: <Widget>[
ListTile(
title: Text("Water Tracking"),
onTap: () {
Navigator.push(context,
MaterialPageRoute(builder: (context) => WaterTracking()));
},
),
ListTile(
title: Text("Exercise Tracking"),
onTap: () {
Navigator.push(context,
MaterialPageRoute(builder: (context) => ExerciseTracking()));
},
),
ListTile(
title: Text("Hydration Recommendations"),
onTap: () {
Navigator.push(
context,
MaterialPageRoute(
builder: (context) => HydrationRecommendations()));
},
),
ListTile(
title: Text("Weather and Location Based Suggestions"),
onTap: () {
Navigator.push(
context,
MaterialPageRoute(
builder: (context) => WeatherLocationSuggestions()));
},
),
ListTile(
title: Text("Profile"),
onTap: () {
Navigator.push(context,
MaterialPageRoute(builder: (context) => Profile()));
},
),
ListTile(
title: Text("Settings"),
onTap: () {
Navigator.push(context,
MaterialPageRoute(builder: (context) => Settings()));
},
),
],
),
),
);
}
}