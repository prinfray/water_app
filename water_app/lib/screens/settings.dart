import 'package:flutter/material.dart';

import '../components/navbar_custom.dart';
import 'exercice_page.dart';
import 'hydration_page.dart';
// class Settings extends StatelessWidget {
//   const Settings({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(actions: [
//         IconButton(
//           icon: const Icon(Icons.settings),
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => const Settings()),
//             );
//           },
//         ),
//       ]),
//     );
//   }
// }

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  int _selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
              child: Text(
                'Account Settings',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/37553901?v=4'),
                // AssetImage('assets/images/meow-amazon.jpg'),
              ),
              title: Text('Profile Picture'),
              onTap: () {
                // TODO: Implement profile picture editing
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Username'),
              subtitle: Text('johndoe'),
              onTap: () {
                // TODO: Implement username editing
              },
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email'),
              subtitle: Text('johndoe@example.com'),
              onTap: () {
                // TODO: Implement email editing
              },
            ),
            ListTile(
              leading: Icon(Icons.lock),
              title: Text('Password'),
              onTap: () {
                // TODO: Implement password editing
              },
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
              child: Text(
                'Hydration Settings',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.local_drink),
              title: Text('Daily Goal'),
              subtitle: Text('8 cups'),
              onTap: () {
                // TODO: Implement daily goal editing
              },
            ),
            ListTile(
              leading: const Icon(Icons.format_list_numbered),
              title: Text('Units'),
              subtitle: Text('units'),
              onTap: () {
                // TODO: Implement units editing
              },
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
              child: Text(
                'Notifications',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            SwitchListTile(
              title: Text('Daily Reminder'),
              value: true,
              onChanged: (value) {
                // TODO: Implement daily reminder toggling
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Custom Reminder'),
              subtitle: Text('12:00 PM'),
              onTap: () {
                // TODO: Implement custom reminder editing
              },
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
              child: Text(
                'Appearance',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.color_lens),
              title: Text('Theme'),
              subtitle: Text('Light'),
              onTap: () {
                // TODO: Implement theme editing
              },
            ),
          ],
        ),
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
                MaterialPageRoute(builder: (context) => const Settings()),
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
