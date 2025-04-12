import 'package:flutter/material.dart';
import 'package:music_player_flutter/pages/settingspage.dart';

class Appdrawer extends StatelessWidget {
  const Appdrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          DrawerHeader(
              child: Icon(
            Icons.music_note,
            size: 100,
            color: Theme.of(context).colorScheme.inversePrimary,
          )),
          Padding(
            padding: EdgeInsets.only(top: 25, left: 25),
            child: ListTile(
              leading: Icon(
                Icons.home,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              title: Text(
                "H O M E",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 25, left: 25),
            child: ListTile(
              leading: Icon(
                Icons.settings,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              title: Text(
                "S E T T I N G S",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SettingsPage(),
                    ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
